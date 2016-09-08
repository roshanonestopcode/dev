<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Wmclegalassistance extends CI_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     * 	- or -
     * 		http://example.com/index.php/welcome/index
     * 	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */
    public function __construct() {
        parent::__construct();
    }

    public function index() {

        $data['title'] = 'Win my case | WMC Legal Assistance';
        $data['page'] = 'wmclegalassistance';
        $this->load->view('wmclegalassistance/default', $data);
    }

    public function sendmsg() {

        $from = $this->input->post('email');
        $sendTo ='contact@onestopcode.com';
        $subject = 'WMC Legal Assistance';
        $fields = array('name' => 'Name','phone' => 'Phone', 'email' => 'Email', 'message' => 'Message'); // array variable name => Text to appear in email
        //$okMessage = 'Contact form successfully submitted. Thank you, I will get back to you soon!';
        $okMessage = 'Thank you, I will get back to you soon!';
        $errorMessage = 'There was an error while submitting the form. Please try again later';
        try {
            $emailText = "You have new message For WMC Legal Assistance\r\n<br/>";
            foreach ($_POST as $key => $value) {

                if (isset($fields[$key])) {
                    $emailText .= "$fields[$key]: $value\r\n<br/>";
                }
            }
            $sendEmail = array(
                'Subject' => $subject,
                'Message' => $emailText,
                'To' => $sendTo,
                'From' => WEB_MAIL
            );
            $mail = sendEmail($sendEmail);
            if ($mail) {
                $responseArray = array('type' => 'success', 'message' => $okMessage);
            }
            mail($sendTo, $subject, $emailText, "From: " . $from);
           
        } catch (\Exception $e) {
            $responseArray = array('type' => 'danger', 'message' => $errorMessage);
        }
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            $encoded = json_encode($responseArray);
            header('Content-Type: application/json');
            echo $encoded;
        } else {
            echo $responseArray['message'];
        }
    }

}

?>