<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
require_once APPPATH . '/libraries/REST_Controller.php';

class Clientapi extends REST_Controller {

    function __construct() {
        // Construct the parent class
        parent::__construct();
        // $this->load->config($config);
    }

    public function login_get() {
        $username = safe($this->get('uname'));
        $password = do_hash($this->get('password'));
        if (!empty($username) && !empty($password)) {
            $userData = $this->_get_userdata($username, $password);

            // Check if the user exist
            if ($userData) {
                $userType = $userData->UserType;
                // Check user type, client only access
                if ($userType == 'TYPE_CLI') {
                    // Check if its user first login, then create entry in key table
                    if (!$this->_get_key_user($userData->ID)) {
                        $apiKey = $this->createKey($userData, $password);
                    }
                    // Else regenerate key for current user
                    else {
                        $apiKey = $this->regenerateKey($userData->ID);
                    }
                    $userDetail = [ 'ID' => $userData->ID,
                        'Email' => $userData->Email,
                        'Name' => $userData->FirstName . " " . $userData->LastName,
                        'CompanyRegNo' => $userData->CompnayRegNo,
                        'VatRegNo' => unserialize($userData->CompanyParams)['VATRegistrationNo'],
                        'ApiKey' => $apiKey];
                    $this->response(['STATUS' => REST_Controller::HTTP_OK, 'CONTENT' => $userDetail], REST_Controller::HTTP_OK); // OK (200) HTTP response code
                } else
                    $this->response(['STATUS' => REST_Controller::HTTP_UNAUTHORIZED, 'CONTENT' => 'Unauthorized Access'], REST_Controller::HTTP_UNAUTHORIZED); // Unauthorized Access (401)
            }
            else {
                $this->response(['STATUS' => REST_Controller::HTTP_NOT_FOUND, 'CONTENT' => 'User Not found'], REST_Controller::HTTP_NOT_FOUND); // Not Found (404)
            }
        } else {
            $this->response(['STATUS' => REST_Controller::HTTP_BAD_REQUEST, 'CONTENT' => 'Incomplete Username and password'], REST_Controller::HTTP_BAD_REQUEST); // Bad Request (400)
        }
    }

    public function logout_get() {
        $userId = $this->_get_key($this->get('API-KEY'))->UserId;
        $this->_update_key($userId);
        $this->response(['STATUS' => REST_Controller::HTTP_OK, 'CONTENT' => 'Logout Successful'], REST_Controller::HTTP_OK);
    }

}
