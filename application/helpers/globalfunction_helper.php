<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/* This function checks the Type of User */
if (!function_exists('userDasboard')) {

    function userDasboard($type = NULL) {
        $ci = & get_instance();
        $user = $ci->session->userdata('user');
        switch ($type) {
            case 'client':
                $ci->session->set_userdata('typeid', 1);
                redirect(base_url() . 'post_job');
                break;
            case 'lawyer':
                redirect(base_url() . 'clients');
                break;
            default:
                redirect(base_url());
                break;
        }
    }

}

function set_user_session($data = NULL) {
    if (!empty($data)) {
        $users = array(
            'userId' => $data->id,
            'name' => $data->name,
            'facebookId' => $data->facebookId,
            'email' => $data->email,
            'address' => $data->address,
            'description' => $data->description,
            'gender' => $data->gender,
            'type' => $data->type,
            'licence' => $data->licence,
            'verify' => $data->verify,
            'profileimage' => $data->profile_image,
        );
        return $users;
    }
}

function custom_set_user_session($data = NULL) {
    if (!empty($data)) {
        $users = array(
            'userId' => $data[0]->id,
            'name' => $data[0]->name,
            'email' => $data[0]->email,
            //'dob' => $data[0]->dob,
            'address' => $data[0]->address,
            'gender' => $data[0]->gender,
            'type' => $data[0]->type,
            'licence' => $data[0]->licence,
            'verify' => $data[0]->verify,
            'profileimage' => $data[0]->profile_image,
        );
        return $users;
    }
}

/*
 * 	This function will check the access level of the user on dashboard.
 * 	Return Value : 404 error if not corresponding access level.
 */

function checkUserAccess($level = NULL) {
    $ci = & get_instance();
    $user = $ci->session->userdata('user');
    if ($user == false) {
        setRedirect(site_url());
    } elseif (!in_array($user['UserType'], $level)) {
        setRedirect(site_url());
    }
}

/*
 * 	This function returns the list of user types
 */

function userTypeList() {
    $list = array(
        '0' => '-- Select user --',
        'TYPE_ADMIN' => 'Supper Admin',
        'TYPE_LAWYER' => 'Lawyer',
        'TYPE_USER' => 'User'
    );
    return $list;
}

/*
 * 		This function will add the javascript files corresponding to the page accessed by the user
 *
 */

function addScriptsFiles($page) {
    $ci = & get_instance();
    //echo css_asset('mystyle.css');
    //echo image_asset('myimage.css');
    //echo js_asset('myscript.js');
    switch ($page) {
        case 'home':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/custom.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/slick.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/slick-theme.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery-ui.css"/>';

            //additions review slider
            //  echo '<link  rel="stylesheet" href="' . site_url() . 'assets/review/bootstrapTheme.css">';
            //  echo '<link  rel="stylesheet" href="' . site_url() . 'assets/review/custom.css">';
            echo '<link  rel="stylesheet" href="' . site_url() . 'assets/review/owl-carousel/owl.carousel.css">';
            echo '<link  rel="stylesheet" href="' . site_url() . 'assets/review/owl-carousel/owl.theme.css">';
            echo '<link  rel="stylesheet" href="' . site_url() . 'assets/review/google-code-prettify/prettify.css">';

            //echo '<script type="text/javascript" src="' . site_url() . 'assets/review/bootstrap-collapse.js"></script>';
            //echo '<script type="text/javascript" src="' . site_url() . 'assets/review/bootstrap-transition.js"></script>';
            //echo '<script type="text/javascript" src="' . site_url() . 'assets/review/bootstrap-tab.js"></script>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/review/application.js"></script>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/review/jquery-1.9.1.min.js"></script>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/review/google-code-prettify/prettify.js"></script>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/review/owl-carousel/owl.carousel.js"></script>';



            $ci->load->view('common_js');
            $ci->load->view('support_js');
            break;
        case 'browse':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/style.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/slick.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/slick-theme.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery-ui.css"/>';
            $ci->load->view('browse/profile_browse_js');
            $ci->load->view('common_js');
            $ci->load->view('support_js');
            break;

        case 'wmclegalassistance':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/style.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/slick.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/slick-theme.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery-ui.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/validator.js"></script>';
            $ci->load->view('wmclegalassistance/wmc_legal_assistance_js');
            $ci->load->view('common_js');
            $ci->load->view('support_js');
            break;
        case 'start_up_sme':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/styles-accordian.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/html5shiv.js"></script>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/rlaccordion.js"></script>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/scripts.js"></script>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/validator.js"></script>';
            $ci->load->view('startupsme/startup_js');
            $ci->load->view('wmclegalassistance/wmc_legal_assistance_js');
            $ci->load->view('support_js');
            break;
        case 'legal_qa':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/style.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/slick.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/slick-theme.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery-ui.css"/>';
            $ci->load->view('legalqa/legalqa_js');
            $ci->load->view('support_js');
            break;
        case 'register':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/style.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/sh/shCore.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/sh/shThemeDefault.css"/>';
            echo '<link rel="stylesheet"  type="text/css" href="' . site_url() . 'assets/css/meanmenu.css" media="all" />';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/sh/shCore.js"></script>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/sh/shBrushJScript.js"></script>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.searchabledropdown-1.0.8.min.js"></script>';
            if ($_SESSION['practice'] == 1) {
                echo '<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />';
                echo '<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>';
            }
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.toast.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.toast.js"></script>';

            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.validation.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.validation.js"></script>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery-ui.css"/>';
            echo ' <script src="' . base_url() . 'assets/js/jquery.meanmenu.js"></script>';
            $ci->load->view('common_js');
            $ci->load->view('support_js');
            break;
        case 'profile':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/liquid-slider.css"/>';
            echo '<link rel="stylesheet"  type="text/css" href="' . site_url() . 'assets/css/meanmenu.css" media="all" />';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/js/bootstrap.min.js"/>';
            $ci->load->view('profile/profile_js');
            if ($_SESSION['practice'] == 1) {
                echo '<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />';
                echo '<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>';
            }
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.toast.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.toast.js"></script>';
            echo ' <script src="' . base_url() . 'assets/js/jquery.meanmenu.js"></script>';
            $ci->load->view('support_js');
            break;

        case 'practice':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/liquid-slider.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/sol.css"/>';
            echo '<link rel="stylesheet"  type="text/css" href="' . site_url() . 'assets/css/meanmenu.css" media="all" />';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/sol.js"></script>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/easy-responsive-tabs.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/easy-responsive-tabs.js"></script>';
            echo '<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">';
            if ($_SESSION['practice'] == 1) {
                echo '<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />';
                echo '<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>';
            }
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.toast.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.toast.js"></script>';
            echo ' <script src="' . base_url() . 'assets/js/jquery.meanmenu.js"></script>';
            $ci->load->view('profile/profile_js');
            $ci->load->view('common_js');
            $ci->load->view('support_js');
            break;

        case 'forum':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/liquid-slider.css"/>';
            if ($_SESSION['practice'] == 1) {
                echo '<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />';
                echo '<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>';
            }
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.toast.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.toast.js"></script>';
            echo ' <script src="' . base_url() . 'assets/js/jquery.meanmenu.js"></script>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.validation.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.validation.js"></script>';
            $ci->load->view('forum/forum_js');
            $ci->load->view('common_js');
            $ci->load->view('support_js');
            break;
        case 'forum_question_answer':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet"  type="text/css" href="' . site_url() . 'assets/css/meanmenu.css" media="all" />';
            if ($_SESSION['practice'] == 1) {
                echo '<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />';
                echo '<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>';
            }
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.toast.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.toast.js"></script>';
            echo ' <script src="' . base_url() . 'assets/js/jquery.meanmenu.js"></script>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.validation.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.validation.js"></script>';
            $ci->load->view('forum/forum_js');
            $ci->load->view('common_js');
            $ci->load->view('support_js');
            break;
        case 'client':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/liquid-slider.css"/>';
            if ($_SESSION['practice'] == 1) {
                echo '<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />';
                echo '<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>';
            }
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.toast.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.toast.js"></script>';
            echo ' <script src="' . base_url() . 'assets/js/jquery.meanmenu.js"></script>';
            $ci->load->view('clients/client_js');
            $ci->load->view('common_js');
            $ci->load->view('support_js');
            break;
        case 'client_dashboard':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet"  type="text/css" href="' . site_url() . 'assets/css/meanmenu.css" media="all" />';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.toast.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.toast.js"></script>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.validation.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.validation.js"></script>';
            echo ' <script src="' . base_url() . 'assets/js/jquery.meanmenu.js"></script>';
            $ci->load->view('clients/client_dashboard_js');
            $ci->load->view('support_js');
            break;

        case 'post_job':
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/main.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/custom2.css"/>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.dataTables.min.css"/>';
            echo '<link rel="stylesheet"  type="text/css" href="' . site_url() . 'assets/css/meanmenu.css" media="all" />';
            if ($_SESSION['practice'] == 1) {
                echo '<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />';
                echo '<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>';
            }

            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.toast.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.toast.js"></script>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.dataTables.min.js"></script>';
            echo ' <script src="' . base_url() . 'assets/js/jquery.meanmenu.js"></script>';
            echo '<link rel="stylesheet" type="text/css" href="' . site_url() . 'assets/css/jquery.validation.css"/>';
            echo '<script type="text/javascript" src="' . site_url() . 'assets/js/jquery.validation.js"></script>';

            $ci->load->view('postjob/postjob_js');
            $ci->load->view('common_js');
            $ci->load->view('support_js');


            break;
        default:
            break;
    }
}

function getUserName($id) {
    $ci = & get_instance();
    $prefix = $ci->db->dbprefix;
    $query = $ci->db->query('SELECT FirstName FROM ' . $prefix . 'users WHERE ID=' . $id);
    if ($query->num_rows() > 0) {
        $record = $query->result();
        $record = $record[0]->FirstName;
        return $record;
    } else {
        return FALSE;
    }
}

function cDate($date) {
    if (empty($date) || $date == '0000-00-00') {
        return '';
    } else {
        return date('d-m-Y', strtotime($date));
    }
}

function vDate($date) {
    if (empty($date) || $date == '0000-00-00') {
        return '';
    } else {
        return date('d/m/Y', strtotime($date));
    }
}

function mDate($date) {
    if (empty($date) || $date == '0000-00-00') {
        return '';
    } else {
        return date('Y-m-d', strtotime($date));
    }
}

/* function sendEmail($email = NULL) {

  $config = Array(
  'mailtype' => 'html',
  'wordwrap' => TRUE,
  'charset' => 'iso-8859-1',
  'crlf' => "\r\n",
  'newline' => "\r\n",
  'mailtype' => 'html',
  'bcc_batch_mode' => true,
  'bcc_batch_size' => 5,
  'protocol' => 'smtp',
  'smtp_host' => 'smtp.sendgrid.net',
  'smtp_port' => '587',
  'smtp_user' => 'sandeep_netquall_test',
  'smtp_pass' => 'netquall786*#',
  'charset' => 'utf-8',
  );
  $config = array();
  $config['useragent'] = "CodeIgniter";
  $config['mailpath'] = "/usr/bin/sendmail"; // or "/usr/sbin/sendmail"
  $config['protocol'] = "smtp";
  $config['smtp_host'] = "localhost";
  $config['smtp_port'] = "25";
  $config['mailtype'] = 'html';
  $config['charset'] = 'utf-8';
  $config['newline'] = "\r\n";
  $config['wordwrap'] = TRUE;

  $ci = & get_instance();
  $ci->load->library('email', $config);
  $ci->email->set_newline("\r\n");
  $ci->email->from(WEB_MAIL, 'Win My Case');
  $ci->email->to($email['To']);
  $ci->email->subject($email['Subject']);
  $ci->email->message($email['Message']);
  if ($ci->email->send()) {
  return TRUE;
  } else {
  //echo show_error($ci->email->print_debugger());die;
  return FALSE;
  }
  } */

function sendEmail($email) {
    /* Send mail to the user will do it later on */

    $config = Array(
        'mailtype' => 'html',
        'wordwrap' => TRUE,
        'charset' => 'iso-8859-1',
    );

    $ci = & get_instance();
    $ci->load->library('email', $config);
    $ci->email->set_newline("\r\n");
    $ci->email->from(WEB_MAIL, 'Win My Case');
    $ci->email->to($email['To']);
    $ci->email->subject($email['Subject']);
    $ci->email->message($email['Message']);
    if ($ci->email->send()) {
        return TRUE;
    } else {
        echo show_error($ci->email->print_debugger());
        die;
        return FALSE;
    }
}

/* Get selected client category */

function selectedClientcategory($id = NULL) {
    $ci = & get_instance();
    $query = $ci->db->query('SELECT categoryname FROM categories WHERE id=' . $id);
    if ($query->num_rows() > 0) {
        $record = $query->result();
        $record = $record[0]->categoryname;
        return $record;
    } else {
        return FALSE;
    }
}

function selectedClientcategoryId($id = NULL) {
    $ci = & get_instance();
    $query = $ci->db->query('SELECT cateId FROM user_categories WHERE userId=' . $id);
    if ($query->num_rows() > 0) {
        $record = $query->result();
        return $record;
    } else {
        return FALSE;
    }
}

function getResponse($id) {
    $ci = & get_instance();
    $query = $ci->db->query('SELECT question_id FROM messages WHERE question_id=' . $id);
    if ($query->num_rows() > 0) {
        $record = $query->result();
        return count($record);
    } else {
        return 0;
    }
}

function getproposalResponse($id) {
    $ci = & get_instance();
    $user = $ci->session->userdata('user');
    $userId = $user['userId'];
    $query = $ci->db->query("SELECT * FROM job_proposal WHERE  jobid=$id");
    if ($query->num_rows() > 0) {
        $record = $query->result();
        return count($record);
    } else {
        return 0;
    }
}

function getCategorycount($id) {
    $ci = & get_instance();
    $query = $ci->db->query('SELECT id FROM questions WHERE cat_id=' . $id);
    if ($query->num_rows() > 0) {
        $record = $query->result();
        return count($record);
    } else {
        return 0;
    }
}

function base64_encryption($str = NULL) {
    $ci = & get_instance();
    $str64encode = $ci->encrypt->encode($str);
    $str64encode = base64_encode($str64encode);
    return $str64encode;
}

function base64_decryption($str = NULL) {

    $ci = & get_instance();
    $str64decode = base64_decode($str);
    $str64decode = $ci->encrypt->decode($str64decode);
    return $str64decode;
}

/**
 * Author: Roshan Singh
 * Function Name: getLatLong()
 * $address => Full address.
 * Return => Latitude and longitude of the given address.
 * */
function getLatLong($address) {
    if (!empty($address)) {
        //Formatted address
        $formattedAddr = str_replace(' ', '+', $address);
        //Send request and receive json data by address
        $geocodeFromAddr = file_get_contents('http://maps.googleapis.com/maps/api/geocode/json?address=' . $formattedAddr . '&sensor=false');
        $output = json_decode($geocodeFromAddr);
        //Get latitude and longitute from json data
        $data['latitude'] = $output->results[0]->geometry->location->lat;
        $data['longitude'] = $output->results[0]->geometry->location->lng;
        //Return latitude and longitude of the given address
        if (!empty($data)) {
            return $data;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

function getclientRating($id = NULL) {
    if (!empty($id)) {
        $ci = & get_instance();
        $query = $ci->db->query('SELECT max(rating) as rating FROM rating WHERE u_id=' . $id);
        if ($query->num_rows() > 0) {
            $record = $query->result();
            return $record[0]->rating;
        } else {
            return 0;
        }
    }
}

function checkUserdetails($userinfo = NULL) {
    if ($userinfo['type'] == 'lawyer') {
        $ci = & get_instance();
        $query = $ci->db->query('SELECT experience,licence,verify FROM users WHERE id=' . $userinfo['userId']);
        if ($query->num_rows() > 0) {
            $result = $query->result();
        }
        $query = $ci->db->query('SELECT * FROM user_categories WHERE userId=' . $userinfo['userId']);
        if ($query->num_rows() > 0) {
            $cat = 1;
        } else {
            $cat = 2;
        }
        if (empty($result[0]->experience) || $cat == 2) {
            $_SESSION['practice'] = 1;
        }
        if (!empty($result[0]->experience) || $cat == 1) {
            if (empty($result[0]->licence)) {
                $_SESSION['licence'] = 1;
            } else {
                $_SESSION['licence'] = '';
                if (!empty($result[0]->licence) && $result[0]->verify == 0) {
                    $_SESSION['verify'] = 1;
                } else {
                    $_SESSION['verify'] = '';
                }
            }
        }
    }
}

function validStrLen($str, $maxlen) {
    if (strlen($str) <= $maxlen)
        return $str;

    $newstr = substr($str, 0, $maxlen);
    if (substr($newstr, -1, 1) != ' ')
        $newstr = substr($newstr, 0, strrpos($newstr, " "));

    return $newstr . ".";
}

function checkProposalexist($id = NULL) {
    if (!empty($id)) {
        $ci = & get_instance();
        $user = $ci->session->userdata('user');
        $userId = $user['userId'];
        $query = $ci->db->query("SELECT * FROM job_proposal WHERE userId=$userId and jobid=$id");
        if ($query->num_rows() > 0) {
            return 1;
        } else {
            return 2;
        }
    }
}

function getLegalquestion($id = NULL) {
    if (!empty($id)) {
        $ci = & get_instance();
        $query = $ci->db->query("SELECT * FROM questions WHERE  cat_id=$id limit 3");
        if ($query->num_rows() > 0) {
            return $query->result();
        } else {
            return false;
        }
    }
}

function checkacceptedjob($id = NULL) {
    if (!empty($id)) {
        $ci = & get_instance();
        $query = $ci->db->query("SELECT * FROM accepted_job_proposal WHERE jobid=$id");
        if ($query->num_rows() > 0) {
            return 1;
        } else {
            return 2;
        }
    }
}

function getLegalquestiontotal($id = NULL) {
    if (!empty($id)) {
        $ci = & get_instance();
        $query = $ci->db->query("SELECT * FROM questions WHERE cat_id=$id");
        if ($query->num_rows() > 0) {
            $result = $query->result();
            return count($result);
        } else {
            return 0;
        }
    }
}

function clear_all_cache() {
    $CI = & get_instance();
    $path = $CI->config->item('cache_path');

    $cache_path = ($path == '') ? APPPATH . 'cache/' : $path;

    $handle = opendir($cache_path);
    while (($file = readdir($handle)) !== FALSE) {
        //Leave the directory protection alone
        if ($file != '.htaccess' && $file != 'index.html') {
            @unlink($cache_path . '/' . $file);
        }
    }
    closedir($handle);
}

function asset_url($asset_name, $asset_type = NULL) {
    $obj = & get_instance();
    $base_url = $obj->config->item('base_url');
    $asset_root = '/assets/';
    $asset_location = $base_url . $asset_root;

    if (is_array($asset_name)) {
        $cachename = md5(serialize($asset_name));
        $asset_location .= 'cache/' . $cachename . '.' . $asset_type;
        if (!is_file($asset_root . 'cache/' . $cachename . '.' . $asset_type)) {
            $out = fopen($asset_root . 'cache/' . $cachename . '.' . $asset_type, "w");
            foreach ($asset_name as $file) {
                $file_content = file_get_contents($asset_root . $asset_type . '/' . $file);
                fwrite($out, $file_content);
            }
            fclose($out);
        }
    } else {
        $asset_location .= $asset_type . '/' . $asset_name;
    }
    return $asset_location;
}

function css_asset($asset_name, $attributes = array()) {
    $attribute_str = _parse_asset_html($attributes);
    return '<link href="' . asset_url($asset_name, 'css') . '" rel="stylesheet" type="text/css"' . $attribute_str . ' />';
}

function js_asset($asset_name) {
    return '<script type="text/javascript" src="' . asset_url($asset_name, 'js') . '"></script>';
}

function image_asset($asset_name, $module_name = '', $attributes = array()) {
    $attribute_str = _parse_asset_html($attributes);
    return '<img src="' . asset_url($asset_name, 'img') . '"' . $attribute_str . ' />';
}

function _parse_asset_html($attributes = NULL) {
    if (is_array($attributes)):
        $attribute_str = '';
        foreach ($attributes as $key => $value):
            $attribute_str .= ' ' . $key . '="' . $value . '"';
        endforeach;
        return $attribute_str;
    endif;
    return '';
}
