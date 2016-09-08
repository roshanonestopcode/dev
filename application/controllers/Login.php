<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

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
        $this->load->model('loginmodel');
        $this->load->library('tokenAuth6238');
        $user = $this->session->userdata('user');
        $fetchmethod = $this->router->fetch_method();
        if (isset($user) || !empty($user)) {
            if ($fetchmethod != 'logout') {
                if (empty($user['licence'])) {

                } else {
                    userDasboard($user['type']);
                }
            } else {
                $this->logout();
            }
        }
    }

    public function index($id = NULL) {
        $urlid = $this->uri->segment(2);
        $decripturl = base64_decryption($urlid);
        $explode = explode('===', $decripturl);

        if (!empty($explode[0])) {
            $this->session->set_userdata("invite_user_id", $explode[0]);
            $data['usertype'] = $explode[1];
        }
        $data['title'] = 'Win My Case | Register';
        $data['page'] = 'register';
        $data['role'] = $this->loginmodel->getRole();
        $data['city'] = $this->loginmodel->getCity();
        $this->load->library('facebook'); // Automatically picks appId and secret from config
        $this->load->library('facebook', array(
            'appId' => '1221329737886334',
            'secret' => '5b1c94f53b0b6d737c05ee2eb59dad25',
        ));
        $user = $this->facebook->getUser();
        if ($user) {
            try {
                $data['user_profile'] = $this->facebook->api('/me?fields=id,first_name,last_name,email,gender,locale,picture.width(400).height(400),location,hometown');
            } catch (FacebookApiException $e) {
                $user = null;
            }
        } else {
            $this->facebook->destroySession();
        }
        $data['login_url'] = $this->facebook->getLoginUrl(array(
            'redirect_uri' => site_url('login/facebookLogin'),
            'scope' => array("email") // permissions here
        ));
        //  $data['title'] = 'Login';
        //  $this->load->view('loginForm', $data);
        if (!empty($user)) {
            $data['logout_url'] = site_url('login/logout'); // Logs off application
            $this->session->set_userdata('user', $data['user_profile']);
            $userData = $this->loginmodel->facebookLogin($data['user_profile']);
            if ($userData) {
                $user = set_user_session($userData);
                if (!empty($user)) {
                    $this->session->set_userdata('user', $user);
                    $data['title'] = 'Login';
                    userDasboard($user['type']);
                }
            } else {
                $userData = $this->loginmodel->addFacebookUser($data['user_profile']);
                if ($userData) {
                    $user = set_user_session($userData);
                    if (!empty($user)) {
                        $this->session->set_userdata('user', $user);
                        $data['title'] = 'Login';
                        userDasboard($user['type']);
                    }
                }
            }
            $data['logout_url'] = $this->facebook->getLogoutUrl();
        } else {
            $data['title'] = 'Win My Case | Register';
            $data['page'] = 'register';
            $data['role'] = $this->loginmodel->getRole();
            $data['city'] = $this->loginmodel->getCity();
            $data['login_url'] = $this->facebook->getLoginUrl(array(
                'redirect_uri' => site_url('login/facebookLogin'),
                'scope' => array("email") // permissions here
            ));
        }
        $this->load->view('register', $data);
    }

    //Save sign up form
    public function save() {
        if ($this->input->is_ajax_request()) {

            $name = $this->input->post('name');
            $mobile = $this->input->post('mobile');
            $email = $this->input->post('email');
            $password = $this->input->post('password');
            $role = $this->input->post('role');
            $city = $this->input->post('city');
            $terms = $this->input->post('agree');
            if (!isset($terms)) {
                $terms = 0;
            } else {
                $terms = $terms;
            }
            $subscribe = $this->input->post('subscribe');
            if (!isset($subscribe)) {
                $subscribe = 0;
            } else {
                $subscribe = $subscribe;
            }
            //Email already exists
            $is_exist = $this->loginmodel->isEmailExist($email);
            if ($is_exist) {
                echo json_encode(4);
                exit();
            }
            $currentcode = $this->input->post('otp');
            $secretkey = SMS_AUTH_KEY;
            if (TokenAuth6238::verify($secretkey, $currentcode)) {
                $data = array(
                    'name' => $name,
                    'mobile' => $mobile,
                    'email' => $email,
                    'password_hash' => md5($password),
                    'type' => $role,
                    'city_id' => $city,
                    'verify' => 0,
                    'status' => 0,
                    'created_at' => date('Y-m-d'),
                    'subscribe' => $subscribe,
                    'terms' => $terms
                );
                $response = $this->loginmodel->saveSignup($data);
                if ($response) {
                    $_SESSION['insertedId'] = $response;
                    $_SESSION['name'] = $name;
                    $sendmail = $this->sendMail($response);
                    //$sendmail = 1;
                    if ($sendmail) {
                        if ($role == 'lawyer') {
                            echo json_encode(3);
                        } else {
                            echo json_encode(2);
                        }
                    }
                }
            } else {
                echo json_encode(5);
                exit();
            }
        }
    }

    public function cunsultsuccess() {
        $data['title'] = 'Win My Case | Success';
        $data['page'] = 'register';
        $this->load->view('cunsult_success', $data);
    }

    public function lawyerlicense() {
        $data['title'] = 'Win My Case | License';
        $data['page'] = 'register';
        $data['error'] = '';
        $data['upload_data'] = '';
        $user = $this->session->userdata('user');
        if (!empty($user)) {
            $_SESSION['insertedId'] = $user['userId'];
            $_SESSION['name'] = $user['name'];
        }
        if (isset($_SESSION['insertedId'])) {
            $this->load->view('upload_lawyer_license', $data);
        } else {
            redirect('login');
        }
    }

    public function customlogin() {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $data = array(
                'email' => $this->input->post('email'),
                'password_hash' => $this->input->post('password')
            );
            $userData = $this->loginmodel->customLogin($data);

            if (!empty($userData)) {
                if ($userData[0]->verify == '1' && $userData[0]->type == "lawyer") {
                    $user = custom_set_user_session($userData);
                    $this->session->set_userdata('user', $user);
                    echo json_encode(1);
                    die();
                } else if ($userData[0]->verify == '1' && $userData[0]->type == "client") {
                    $user = custom_set_user_session($userData);
                    $this->session->set_userdata('user', $user);
                    echo json_encode(1);
                    die();
                } else if ($userData[0]->verify != '1' && $userData[0]->type == "client") {
                    echo json_encode(4);
                    die();
                } else if ($userData[0]->verify == '0') {
                    echo json_encode(3);
                    die();
                } else {
                    echo json_encode(2);
                    die();
                }
            } else {
                echo json_encode(2);
                die();
            }
        }
    }

    public function resetpassword() {
        if ($this->input->is_ajax_request()) {
            $email = $this->input->post('email');
            $useremail = $this->loginmodel->isEmailExists($email);
            if (!empty($useremail)) {
                $userId = $useremail[0]->id;
                $email = $useremail[0]->email;
                $token = do_hash(random_string('alnum', 5));
                $link = base_url() . 'login/changePassword/' . base64_encryption($token . '-' . $email);
                $check = $this->loginmodel->addToken($token, $email);
                $emailMSG = $this->resetpasswordtemplate($link, $useremail[0]->name);
                if ($check) {
                    $sendEmail = array(
                        'Subject' => "PASSWORD ASSISTANCE",
                        'Message' => $emailMSG,
                        'To' => $email,
                        'From' => WEB_MAIL
                    );
                    $mail = sendEmail($sendEmail);
                    if ($mail) {
                        echo json_encode(1);
                    }
                }
            } else {

                echo 2;
            }
        }
    }

    function signup() {
        $data['title'] = 'Win My Case | Signup';
        $data['page'] = 'register';
        $this->load->view('sign_up', $data);
    }

    function signin() {

        $data['title'] = 'Win My Case | Login';
        $data['page'] = 'register';

        $this->load->library('facebook'); // Automatically picks appId and secret from config
        $this->load->library('facebook', array(
            'appId' => '1221329737886334',
            'secret' => '5b1c94f53b0b6d737c05ee2eb59dad25',
        ));
        $user = $this->facebook->getUser();
        if ($user) {
            try {
                $data['user_profile'] = $this->facebook->api('/me?fields=id,first_name,last_name,email,gender,locale,picture.width(400).height(400),location,hometown');
            } catch (FacebookApiException $e) {
                $user = null;
            }
        } else {
            $this->facebook->destroySession();
        }
        $data['login_url'] = $this->facebook->getLoginUrl(array(
            'redirect_uri' => site_url('login/facebookLogin'),
            'scope' => array("email") // permissions here
        ));
        //  $data['title'] = 'Login';
        //  $this->load->view('loginForm', $data);
        if (!empty($user)) {
            $data['logout_url'] = site_url('login/logout'); // Logs off application
            $this->session->set_userdata('user', $data['user_profile']);
            $userData = $this->loginmodel->facebookLogin($data['user_profile']);
            if ($userData) {
                $user = set_user_session($userData);
                if (!empty($user)) {
                    $this->session->set_userdata('user', $user);
                    $data['title'] = 'Login';
                    userDasboard($user['type']);
                }
            } else {
                $userData = $this->loginmodel->addFacebookUser($data['user_profile']);
                if ($userData) {
                    $user = set_user_session($userData);
                    if (!empty($user)) {
                        $this->session->set_userdata('user', $user);
                        $data['title'] = 'Login';
                        userDasboard($user['type']);
                    }
                }
            }
            $data['logout_url'] = $this->facebook->getLogoutUrl();
        } else {
            $data['title'] = 'Win My Case | Login';
            $data['page'] = 'register';
            $data['role'] = $this->loginmodel->getRole();
            $data['city'] = $this->loginmodel->getCity();
            $data['login_url'] = $this->facebook->getLoginUrl(array(
                'redirect_uri' => site_url('login/facebookLogin'),
                'scope' => array("email") // permissions here
            ));
        }
        $this->load->view('sign_in', $data);
    }

    function signinclient($id = NULL) {

        $data['title'] = 'Win My Case | Login';
        $data['page'] = 'register';
        $urlid = $this->uri->segment(2);
        $decripturl = base64_decryption($urlid);
        $explode = explode('===', $decripturl);
        if (!empty($explode[0])) {
            $this->session->set_userdata("type", $explode[0]);
            $data['type'] = $explode[1];
        }

        $this->load->library('facebook'); // Automatically picks appId and secret from config
        $this->facebook->destroySession();
        $this->load->library('facebook', array(
            'appId' => '1221329737886334',
            'secret' => '5b1c94f53b0b6d737c05ee2eb59dad25',
        ));
        $user = $this->facebook->getUser();
        if ($user) {
            try {
                $data['user_profile'] = $this->facebook->api('/me?fields=id,first_name,last_name,email,gender,locale,picture.width(400).height(400),location,hometown');
            } catch (FacebookApiException $e) {
                $user = null;
            }
        } else {
            $this->facebook->destroySession();
        }
        $data['login_url'] = $this->facebook->getLoginUrl(array(
            'redirect_uri' => site_url('login/facebookLogin'),
            'scope' => array("email") // permissions here
        ));
        //  $data['title'] = 'Login';
        //  $this->load->view('loginForm', $data);
        if (!empty($user)) {
            $data['logout_url'] = site_url('login/logout'); // Logs off application
            $this->session->set_userdata('user', $data['user_profile']);
            $userData = $this->loginmodel->facebookLogin($data['user_profile']);
            if ($userData) {

                $user = set_user_session($userData);
                if (!empty($user)) {
                    $this->session->set_userdata('user', $user);
                    $data['title'] = 'Login';
                    userDasboard($user['type']);
                }
            } else {
                $userData = $this->loginmodel->addFacebookUser($data['user_profile']);
                if ($userData) {
                    $user = set_user_session($userData);
                    if (!empty($user)) {
                        $this->session->set_userdata('user', $user);
                        $data['title'] = 'Login';
                        userDasboard($user['type']);
                    }
                }
            }
            $data['logout_url'] = $this->facebook->getLogoutUrl();
        } else {
            $data['title'] = 'Win My Case | Login';
            $data['page'] = 'register';
            $data['role'] = $this->loginmodel->getRole();
            $data['city'] = $this->loginmodel->getCity();
            $data['login_url'] = $this->facebook->getLoginUrl(array(
                'redirect_uri' => site_url('login/facebookLogin'),
                'scope' => array("email") // permissions here
            ));
        }
        $this->load->view('sign_in', $data);
    }

    function changePassword($token = null) {
        if (!empty($token)) {
            $token = base64_decryption($token);
            $token = explode('-', $token);
            $token[0] = $token[0];
            $token[1] = $token[1];
            if (!is_array($token)) {
                show_404();
            }
            $response = $this->loginmodel->checkToken($token);
            $data['title'] = 'Win My Case | Reset Password';
            $data['page'] = 'register';
            if ($response) {
                $data['task'] = 'changePasswordForm';
                $data['UserID'] = base64_encryption($response[0]->id);
                $data['action'] = base64_encryption('updateUserPassword');
                $this->load->view('resetpassword', $data);
            } else {
                redirect('login');
            }
        } else {
            show_404();
        }
    }

    public function facebookLogin() {
        $this->load->library('facebook', array(
            'appId' => '1221329737886334',
            'secret' => '5b1c94f53b0b6d737c05ee2eb59dad25',
        ));
        $user = $this->facebook->getUser();

        if ($user) {
            try {
                $data['user_profile'] = $this->facebook->api('/me?fields=id,first_name,last_name,email,gender,locale,picture.width(400).height(400),location,hometown');
            } catch (FacebookApiException $e) {
                $user = null;
            }
        } else {
            // Solves first time login issue. (Issue: #10)
            $this->facebook->destroySession();
        }

        if ($user) {
            //$this->facebook->destroySession();
            //$data['logout_url'] = site_url('login/logout'); // Logs off application
            // $this->session->set_userdata('user', $data['user_profile']);
            $userData = $this->loginmodel->facebookLogin($data['user_profile']);

            if ($userData) {

                $user = set_user_session($userData);
                if (!empty($user)) {
                    $this->session->set_userdata('user', $user);
                    $data['title'] = 'Win My Case | Login';
                    userDasboard($user['type']);
                    exit();
                }
            } else {

                $userData = $this->loginmodel->addFacebookUser($data['user_profile']);
                if ($userData) {
                    $user = set_user_session($userData);
                    if (!empty($user)) {
                        $this->session->set_userdata('user', $user);
                        $data['title'] = 'login';
                        userDasboard($user['type']);
                        exit();
                    }
                }
            }
            // OR
            // Logs off FB!
            // $data['logout_url'] = $this->facebook->getLogoutUrl();
        } else {

            $data['title'] = 'Win My Case | Login';
            $data['page'] = 'register';
            $data['role'] = $this->loginmodel->getRole();
            $data['city'] = $this->loginmodel->getCity();
            $data['login_url'] = $this->facebook->getLoginUrl(array(
                'redirect_uri' => site_url('login/facebookLogin'),
                'scope' => array("email") // permissions here
            ));

            $this->load->view('register', $data);
        }
    }

    public function getOtp() {
        if ($this->input->is_ajax_request()) {
            $secretkey = SMS_AUTH_KEY;
            $getTokenCode = TokenAuth6238::getTokenCodeDebug($secretkey, 0);
            $mobile = $this->input->post('mobile');
            $msg = "One Time Password is " . $getTokenCode;
            $sender = MSG_SENDER;
            $curl_handle = curl_init();
            $url = "https://control.msg91.com/api/sendhttp.php?authkey=$secretkey&mobiles=$mobile&message=$msg&sender=$sender&route=4&country=91";
            curl_setopt($curl_handle, CURLOPT_URL, $url);
            curl_setopt($curl_handle, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($curl_handle, CURLOPT_CONNECTTIMEOUT, 5);
            curl_setopt($curl_handle, CURLOPT_TIMEOUT, 5);
            curl_exec($curl_handle);
            curl_close($curl_handle);
            echo json_encode(1);
        }
    }

    public function sendMail($id = null) {
        if ($id) {
            $this->load->library('encrypt');
            $userdata = $this->loginmodel->getUserdata($id);

            $link = base_url() . "login/verified/" . base64_encryption($userdata[0]->id);
            $name = $userdata[0]->name;
            $msg = 'Hi  ' . $name . ', <br/><br/>Please verify your email address by clicking here:<br/><br/>' . $link . '<br/><br/>Thanks,<br/><br/>The Win My Case Team';
            $sendEmail = array(
                'Subject' => 'Verify your win my case account',
                'Message' => $msg,
                'To' => $userdata[0]->email,
                'From' => WEB_MAIL,
            );
        }
        $response = sendEmail($sendEmail);
        if ($response) {
            return true;
        } else {
            return false;
        }
    }

    public function verified($id = null) {
        $id = base64_decryption($id);
        $data['title'] = 'Win My Case | Verified Account';
        $data['page'] = 'register';
        if ($id) {
            $response = $this->loginmodel->verified($id);
            if ($response) {
                $data['userdetails'] = $response;
                $data['success'] = 1;
            }
        } else {
            $data['userdetails'] = '';
            $data['success'] = 2;
        }
        $this->load->view('welcome_message', $data);
    }

    //user profile
    public function userProfile($active = null) {
        if ($active == 1) {
            $data['title'] = 'Win My Case | Login';
            $data['page'] = 'Login';
            redirect('profile');
        } else {
            redirect('login');
        }
    }

    function updatepassword() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $id = base64_decryption($this->input->post('id'));
            $match_data = array(
                'id' => $id,
                'password_hash' => md5($this->input->post('cpassword'))
            );

            $response = $this->loginmodel->updateUserPassword($match_data);
            if ($response == TRUE) {
                echo json_encode(1);
            } else {
                echo json_encode(2);
            }
        } else {
            show_404();
        }
    }

    public function listing() {
        $user = $this->session->userdata('user');
        $fetchmethod = $this->router->fetch_method();
        if (isset($user) || !empty($user)) {
            if ($fetchmethod != 'logout') {
                userDasboard($user['type']);
            } else {
                $this->logout();
            }
        }
    }

    public function uploadlicence() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $ext = pathinfo($_FILES['userfile']['name'], PATHINFO_EXTENSION);
            $_FILES['userfile']['name'] = date('d') . "_" . rand(1000, 9999) . "_" . date('his') . "." . $ext;
            $config['upload_path'] = './uploads/';
            $_SESSION['img'] = '';
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = '2048000';
            $config['max_width'] = '1024';
            $config['max_height'] = '768';
            $this->load->library('upload', $config);
            $data['title'] = 'Win My Case | Upload Licence';
            $data['page'] = 'register';
            $config['file_name'] = $_SESSION['name'] . "_" . rand(1000, 9999) . "_" . date('d');

            if (!$this->upload->do_upload('userfile')) {
                $error = $this->upload->display_errors();
                $data['error'] = "<div class='alert alert-danger text-center'><i class='glyphicon glyphicon-exclamation-sign'></i>&nbsp;" . $error . "</div>";
                $data['upload_data'] = '';
            } else {
                $data['error'] = '';
                $img = $this->upload->data();
                $_SESSION['img'] = $img['file_name'];
                $id = $_SESSION['insertedId'];
                $response = $this->loginmodel->updatelicence($id, $img['file_name']);
                if ($response)
                    $data['upload_data'] = "<div class='alert alert-success text-center'><i class='glyphicon glyphicon-exclamation-sign'></i>&nbsp;Licence Upload Successfully, Your licence is under process</div>";
            }
            $this->load->view('lawyer_success', $data);
        }
    }

    public function  signinas(){
         $data['title'] = 'Win My Case | Sign in as';
         $data['page'] = 'register';
         $this->load->view('sign_in_as', $data);
    }

    public function logout() {
        $this->load->library('facebook');
        clearstatcache();
        $this->session->sess_destroy();
        $_SESSION['__ci_last_regenerate']='';
        $this->facebook->destroySession();
        $args['next'] = site_url('logout');
        $this->facebook->getLogoutUrl($args);
        clear_all_cache();
        redirect('home');
    }

    public function resetpasswordtemplate($link = NULL, $name = NULL) {
        if (!empty($link)) {
            $msg = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

</head>
<body style="background-color:#ccc">
<table id="t01" width="100%">
  <!---First Row----->
  	<tr>
      	<td width="100%" colspan="2">
        	<table width="100%">
            	<tr style="background-color:#0288C8;"><th style="float:left;"><img src="' . base_url() . 'assets/images/logo.png"  width="70%;"/></th></tr>
            </table>
        </td>
    </tr>
    <tr>
      	<td width="100%" colspan="2" style="border-top:7px solid #000; ">
        	<table width="100%" style="background-color:#fff;padding:0px !important; padding:3%;">
            	<tr ><th class="content-control">Hi, ' . $name . '</th><th></th><th></th></tr>
               	<tr>
      				<td width="100%" class="content-control2">
                        <p>We received a request to reset the password associated with this e-mail address. If you made this request, please follow the instructions below.</p>
                        <p>Click the link below to reset your password using our secure server:</p>
                        <p>' . $link . '</p>
                     </td>
   	 			</tr>
				<tr>
                    <td width="30%" class="content-control2" >
                        <p>If you did not request to have your password reset, you can safely ignore this email. Rest assured your customer account is safe.</p>
                        <p>If clicking the link doesn t seem to work, you can copy and paste the link into your browser s address window, or retype it there. Once you have returned to winmycase.in, we will give instructions for resetting your password.
Winmycase.in will never e-mail you and ask you to disclose or verify your winmycase.in password, credit card, or banking account number. If you receive a suspicious e-mail with a link to update your account information, do not click on the link--instead, report the e-mail to winmycase.in for investigation. Thanks for visiting winmycase.in!
If you have any questions, kindly e-mail us at contact@winmycase.in !</p>
                    </td>
   	 			</tr>
            </table>
        </td>
   </tr>

   <tr>
      	<td width="100%" colspan="2">
        	<table width="100%">
               	<tr>
      				<td width="100%" class="ftr-content-control">
                        <p><center>@2016 WinMyCase, WinMyCase logo are registered trademarks of WinMyCase in India</center></p>

       				 </td>
   	 			</tr>

            </table>
        </td>
   </tr>

</table>

</body>
</html>
</body>
</html>';


            return $msg;
        }
    }

}
