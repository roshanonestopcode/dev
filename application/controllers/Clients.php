<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Clients extends CI_Controller {

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
        $this->load->model('clientmodel');
        $this->load->model('profilemodel');
        $this->load->model('loginmodel');
        $this->load->library('Ajax_pagination');
        $this->perPage = PAGINATION_PER_PAGE;
    }

    public function index() {
        $user = $this->session->userdata('user');
        $_SESSION["match"] = '';
        $data['title'] = 'Clients';
        $data['page'] = 'client';
        $config['target'] = '#postList';
        $config['base_url'] = base_url() . 'clients/ajaxPaginationData';
        $config['total_rows'] = $this->clientmodel->defult_count();
        $config['per_page'] = $this->perPage;
        $this->ajax_pagination->initialize($config);
        $data['clients'] = $this->clientmodel->getClients($match, $this->perPage, 1);
        $data['category'] = $this->profilemodel->getCategory();
        $data['experience'] = $this->profilemodel->getExperience();
        $this->load->view('clients/default', $data);
    }

    public function clientdashboard() {
        $user = $this->session->userdata('user');
        $invite_user_id = $this->session->userdata('invite_user_id');
        if ($user['type'] == 'client') {
            $data['title'] = 'Clients';
            $data['page'] = 'client_dashboard';
            $data['category'] = $this->profilemodel->getCategory();
            $data['city'] = $this->loginmodel->getCity();
            $this->load->view('clients/client-dashboard', $data);
        }
    }

    public function postcase() {
        $user = $this->session->userdata('user');
        $invite_user_id = $this->session->userdata('invite_user_id');
        $_SESSION['typeid']='';
        if ($user['type'] == 'client') {
            $data['title'] = 'Clients';
            $data['page'] = 'client_dashboard';
            $data['category'] = $this->profilemodel->getCategory();
            $data['city'] = $this->loginmodel->getCity();
            $this->load->view('clients/client-dashboard', $data);
        }
    }

    public function ajaxPaginationData() {
        $page = $this->input->get('page');
        if (!$page) {
            $offset = 0;
        } else {
            $offset = $page;
        }
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && $this->input->is_ajax_request()) {
            $_SESSION["match"] = '';
            $search = $this->input->post('search');
            $exp = $this->input->post('experience');
            if (!empty($search) || !empty($exp)) {
                $match = $this->input->post('search');
                if (empty($match)) {
                    $match = $this->input->post('experience');
                }
                $_SESSION["match"] = $match;
            }
        }
        $match = $_SESSION["match"];
        $rowcount = $this->clientmodel->record_count($match);
        //pagination configuration
        $config['target'] = '#postList';
        $config['base_url'] = base_url() . 'clients/ajaxPaginationData';
        $config['per_page'] = $this->perPage;
        $config['total_rows'] = $rowcount;
        $this->ajax_pagination->initialize($config);

        //get the posts data
        $data['clients'] = $this->clientmodel->getClients($match, $this->perPage, $offset);
        //load the view
        $this->load->view('clients/ajax-pagination-data', $data, false);
    }

    public function view($id = NULL) {
        $id = base64_decryption($id);
        if (!empty($id)) {
            $data['title'] = 'View Client';
            $data['page'] = 'profile';
            $data['clientprofile'] = $this->profilemodel->getClientprofile($id);
            $clientprofile = $data['clientprofile'];
            $lat = $clientprofile[0]->lat;
            $long = $clientprofile[0]->longitude;
            //Map setting
            $this->load->library('googlemaps');
            //$config['onload'] = "google.maps.event.trigger(marker_0, 'click');";
            $config['center'] = "$lat, $long";
            $config['zoom'] = '16';
            $this->googlemaps->initialize($config);
            $marker = array();
            $marker['title'] = $clientprofile[0]->address;
            $marker['position'] = $clientprofile[0]->address;
            $marker['infowindow_content'] = $clientprofile[0]->address;

            $marker['visible'] = TRUE;
            $this->googlemaps->add_marker($marker);
            $data['map'] = $this->googlemaps->create_map();
            //End map setting
            $data['time'] = $this->profilemodel->getAvailabilitytimevalue();
            $data['clientcategory'] = $this->profilemodel->getClientcategory($id);
            $data['lawyeravailability'] = $this->profilemodel->lawyerAvailability($id);
            $data['review'] = $this->clientmodel->getReview($id);

            $this->load->view('clients/view-client', $data, false);
        } else {
            redirect('clients');
        }
    }

    public function rating() {
        if ($this->input->is_ajax_request()) {
            $postID = $_POST['postID'];
            $ratingPoints = $_POST['ratingPoints'];
            $ratingRow['rating_number'] = $ratingPoints;
            $ratingRow['average_rating'] = 2.5;
            if ($ratingRow) {
                $ratingRow['status'] = 'ok';
            } else {
                $ratingRow['status'] = 'err';
            }
            echo json_encode($ratingRow);
        }
    }

    public function savecomment() {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $uid = $this->input->post('u_id');
            $data = array(
                'u_id' => $this->input->post('u_id'),
                'rating' => $this->input->post('rating'),
                'total_points' => $this->input->post('total_points'),
                'fromuser_id' => $this->input->post('fromuser_id'),
                'comment' => $this->input->post('rating_comment'),
            );
            $response = $this->clientmodel->savecomment($data);
            if ($response) {
                $msg = '<div class="alert alert-success" id="successMessage"><i class="glyphicon glyphicon-exclamation-sign"></i>&nbsp;Comment added successfully</div>';
                $this->session->set_flashdata("actionMessage", $msg);
                redirect('view_client/' . base64_encryption($uid));
            }
        }
    }

    public function exppractice() {
        if ($this->input->is_ajax_request()) {
            $this->load->model('profilemodel');
            $data['category'] = $this->profilemodel->getCategory();
            $data['experience'] = $this->profilemodel->getExperience();
            $this->load->view('clients/exp-practice', $data, false);
        }
    }

    public function savepracticeexp() {
        if ($this->input->is_ajax_request()) {
            $user = $this->session->userdata('user');
            $id = $user['userId'];
            $category = $this->input->post('category');
            $exp = $this->input->post('exp');
            if (count($category) > 4) {
                echo json_encode(3);
                return false;
                exit();
            }
            $profile = array(
                'experience' => $exp,
            );
            if (!empty($category)) {
                foreach ($category as $key => $value) {
                    $cate[$key] = array(
                        'userId' => $id,
                        'cateId' => $value,
                        'created_on' => date('Y-m-d')
                    );
                }
                $response = $this->profilemodel->updatePractice($profile, $cate);
                if ($response) {
                    $_SESSION['practice'] = '';
                    echo json_encode(1);
                }
            } else {
                echo json_encode(2);
            }
        }
    }

    public function savepostcase() {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (!empty($_FILES['userfile']['name'])) {
                $ext = pathinfo($_FILES['userfile']['name'], PATHINFO_EXTENSION);
                $_FILES['userfile']['name'] = date('d') . "_" . rand(1000, 9999) . "_" . date('his') . "." . $ext;
                $config['upload_path'] = './uploads/';
                $_SESSION['img'] = '';
                $config['allowed_types'] = 'gif|jpg|jpeg|png|pdf|bmp|txt|xls|xlsx|doc|docx|pdf';
                $config['max_size'] = '2048000';
                $config['max_width'] = '1024';
                $config['max_height'] = '768';
                $this->load->library('upload', $config);
                $data['title'] = 'Win My Case | Upload Licence';
                $data['page'] = 'register';
                $config['file_name'] = $_SESSION['name'] . "_" . rand(1000, 9999) . "_" . date('d');

                if (!$this->upload->do_upload('userfile')) {

                } else {
                    $img = $this->upload->data();
                    $file = $img['file_name'];
                }
            } else {
                $file = '';
            }

            $user = $this->session->userdata('user');
            $id = $user['userId'];
            $data = array(
                'category' => $this->input->post('category'),
                'details' => $this->input->post('description'),
                'fee' => $this->input->post('fee'),
                'city' => $this->input->post('city'),
                'file' => $file,
                'userId' => $id,
                'title' => $this->input->post('title'),
                'created_at' => date('Y-m-d H:i:s')
            );
            $response = $this->clientmodel->savepostcase($data);
            if ($response) {
                $msg = '<div class="alert alert-success"><i class="glyphicon glyphicon-ok"></i>';
                $msg .= 'Case Post Successfully';
                $msg .= '</div><br/>';
                $this->session->set_flashdata('customMessage', $msg);
            }
            redirect('post_job');
        }
    }

}

?>
