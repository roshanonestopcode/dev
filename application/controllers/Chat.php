<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Chat extends CI_Controller {

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
        $user = $this->session->userdata('user');
        if (!isset($user) || empty($user)) {
            redirect('login');
        } else {
            checkUserdetails($user);
        }
        $this->load->model('chatmodel');
    }

    public function getuserslist() {
        if ($this->input->is_ajax_request()) {
            $data = $this->chatmodel->getAllUser();
            echo json_encode($data);
        }
    }

    public function sendmessage() {
        if ($this->input->is_ajax_request()) {
            
        }
    }

    public function sendtypingsignal() {
        if ($this->input->is_ajax_request()) {
            
        }
    }
    
    public function getmessagehistory(){
         if ($this->input->is_ajax_request()) {
            
        }
    }
    
      public function getuserinfo(){
         if ($this->input->is_ajax_request()) {
            
        }
    }

}

?>