<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Browse extends CI_Controller {

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
        $this->load->library('Ajax_pagination');
        $this->perPage = PAGINATION_PER_PAGE;
        $this->load->model('browsemodel');
        $this->load->model('profilemodel');
    }

    public function index($id = NULL) {

        $match = '';
        $catid = base64_decryption($id);
        if (!empty($catid)) {
            $match = $catid;
        } else {
            $match = '';
        }
        if ($_SERVER['REQUEST_METHOD'] == 'GET') {
            $match = $this->input->get('profile_search', TRUE);
            $_SESSION['match'] = $match;
        }
        $data['match'] = $match;
        $data['title'] = 'Win My Case | Browse Profile';
        $data['page'] = 'browse';
        $config['target'] = '#postList';
        $config['base_url'] = base_url() . 'browse/ajaxPaginationData';
        $data['browseprofile'] = $this->browsemodel->getbrowseClients($match, $this->perPage, 1);
        //$config['total_rows'] = $this->browsemodel->defult_count($match,$this->perPage, 1);
        $config['total_rows'] = count($data['browseprofile']);
        $config['per_page'] = $this->perPage;
        $this->ajax_pagination->initialize($config);
        //$config['total_rows'] = count($data['browseprofile']);
        $data['category'] = $this->profilemodel->getCategory();
        $data['experience'] = $this->profilemodel->getExperience();
        $this->load->view('browse/default', $data);
    }

    public function ajaxPaginationData() {
        $page = $this->input->post('page');
        if (!$page) {
            $offset = 0;
        } else {
            $offset = $page;
        }
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && $this->input->is_ajax_request()) {
            $search = $this->input->post('serach');
            $exp = $this->input->post('experience');
            $cate = $this->input->post('category');
            if (!empty($search) || !empty($exp) || !empty($cate)) {
                $match = $this->input->post('serach');
                if (empty($match)) {
                    $match = $this->input->post('experience');
                }
                if (empty($match)) {
                    $match = $this->input->post('category');
                }

                $_SESSION["match"] = $match;
            }
        }
        $match = $_SESSION["match"];
        $rowcount = $this->browsemodel->defult_count($match);
        //pagination configuration
        $config['target'] = '#postList';
        $config['base_url'] = base_url() . 'browse/ajaxPaginationData';
        $config['per_page'] = $this->perPage;
        $config['total_rows'] = $rowcount;
        $this->ajax_pagination->initialize($config);

        //get the posts data
        $data['browseprofile'] = $this->browsemodel->getbrowseClients($match, $this->perPage, $offset);
        //load the view
        $this->load->view('browse/ajax-pagination-data', $data, false);
    }

    public function profileview($id = NULL) {
        $id = base64_decryption($id);
        if (empty($id)) {
            redirect('');
            exit();
        }
        $data['title'] = 'Win My Case | View Profile';
        $data['page'] = 'browse';
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
        $data['review'] = $this->profilemodel->lawyerReview();
        $this->load->view('browse/view-profile', $data);
    }

    public function auto_suggest_filter() {
        if ($this->input->is_ajax_request()) {
            $string = $this->input->get('term');
            $data = $this->browsemodel->getCategoryatext($string);
            echo json_encode($data);
        }
    }

}

?>
