<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Postjob extends CI_Controller {

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
        $this->load->model('postjobmodel');
        $this->load->model('profilemodel');
        $this->load->model('loginmodel');
        $this->load->library('Ajax_pagination');
        $this->perPage = PAGINATION_PER_PAGE;
    }

    public function index() {
        $user = $this->session->userdata('user');
        $data['title'] = 'Jobs';
        $data['page'] = 'post_job';
        $data['details'] = $this->postjobmodel->getPostjob();
        $this->load->view('postjob/default', $data);
    }

    public function loadmorejob() {
        if ($this->input->is_ajax_request()) {
            $id = $this->input->post("last_loaded_id");
            $searchdata = $this->input->post("search");
            $data['title'] = 'Jobs';
            $data['page'] = 'post_job';
            $data['details'] = $this->postjobmodel->getPostjob($id, $searchdata);
            $this->load->view('postjob/load-more-job', $data);
        }
    }

    public function searchpostjob() {
        if ($this->input->is_ajax_request()) {
            $searchdata = $this->input->post("search");
            $id = '';
            $data['title'] = 'Jobs';
            $data['page'] = 'post_job';
            $data['details'] = $this->postjobmodel->getPostjob($id, $searchdata);
            $this->load->view('postjob/search-more-job', $data);
        }
    }

    public function viewpostjob($id = NULL) {
        $jobid = $id;
        if (!empty($id)) {
            $data['title'] = 'View Job';
            $data['page'] = 'post_job';
            $data['details'] = $this->postjobmodel->viewPostjob($id);
            $data['jobid'] = $jobid;
            $this->load->view('postjob/view-job', $data);
        }
    }

    public function proposals($id = NULL) {
        $id = base64_decryption($id);
        if (!empty($id)) {
            $data['title'] = 'Submit a Proposal';
            $data['page'] = 'post_job';
            $data['details'] = $this->postjobmodel->viewProposals($id);
            $data['jobid'] = $id;
            $this->load->view('postjob/proposals-form', $data);
        }
    }

    public function saveproposal() {
        if ($this->input->is_ajax_request()) {
            $user = $this->session->userdata('user');
            $data = array(
                'userId' => $user['userId'],
                'jobid' => $this->input->post('jobid'),
                'proposalamt' => $this->input->post('amount'),
                'coverletter' => strip_tags($this->input->post('coverLetter')),
                'created_at' => date('Y-m-d H:i:s')
            );
            if (!empty($data)) {
                $response = $this->postjobmodel->saveProposal($data);
                if ($response) {
                    echo json_encode(1);
                }
            }
        }
    }

    public function postmyjob() {
        $data['title'] = 'Jobs';
        $data['page'] = 'post_job';
        $data['details'] = $this->postjobmodel->getmyPostjob();
        $this->load->view('postjob/my-post-job', $data);
    }

    public function viewjobproposal($id = NULL) {
        $id = base64_decryption($id);

        if (!empty($id)) {

            $data['title'] = 'View Job Proposal';
            $data['page'] = 'post_job';
            $data['clients'] = $this->postjobmodel->viewJobproposal($id);

            $this->load->view('postjob/view-job-proposal', $data);
        }
    }

    public function acceptjob($id = NULL) {
        $id = base64_decryption($id);
        if (!empty($id)) {
            $response = $this->postjobmodel->saveAcceptjob($id);
            if ($response)
                $msg = '<div class="alert alert-success" id="successMessage"><i class="glyphicon glyphicon-exclamation-sign"></i>&nbsp;Job Accepted successfully</div>';
            $this->session->set_flashdata("actionMessage", $msg);
            redirect('view_job_proposal/' . base64_encryption($response));
        }
    }

    public function postacceptedjob() {
        $data['title'] = 'View Accepted Job';
        $data['page'] = 'post_job';
        $data['casedetails'] = $this->postjobmodel->postAcceptedjob();
        $this->load->view('postjob/view-accepted-job', $data);
    }

    public function myjob() {
        $data['title'] = 'View My Job';
        $data['page'] = 'post_job';
        $data['casedetails'] = $this->postjobmodel->myJob();
        $this->load->view('postjob/view-my-job', $data);
    }

    public function editpostjob() {
        if ($this->input->is_ajax_request()) {
            $id = $this->input->post('id');
            $data['page'] = 'post_job';
            $data['category'] = $this->profilemodel->getCategory();
            $data['city'] = $this->loginmodel->getCity();
            $data['postjob'] = $this->postjobmodel->geteditPostjob($id);
            $this->load->view('postjob/edit-post-job-form', $data);
        }
    }

    public function updatepostcase() {
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
            $id = $this->input->post('id');
            $data = array(
                'category' => $this->input->post('category'),
                'details' => strip_tags($this->input->post('des')),
                'fee' => $this->input->post('fee'),
                'city' => $this->input->post('city'),
                'file' => $file,
                'title' => $this->input->post('title'),
                'modified_at' => date('Y-m-d H:i:s')
            );
            $response = $this->postjobmodel->updatepostcase($id, $data);
            
            if ($response) {
                $msg = '<div class="alert alert-success"><i class="glyphicon glyphicon-ok"></i>';
                $msg .= 'Update Posted Job Successfully';
                $msg .= '</div><br/>';
                $this->session->set_flashdata('customMessage', $msg);
            }
          
            redirect('post_my_job');
        }
    }

    public function downloadfile($id = NULL) {
        if (!empty($id)) {
            $data = $this->postjobmodel->downloadpostjobFile($id);
            $file_path = base_url() . "uploads/" . $data[0]->file; // absolute path to file
            if (!empty($file_path)) {
                $this->load->helper('download');
                $fileurl = file_get_contents($file_path);
                force_download($data[0]->file, $fileurl);
                redirect('view_post_job/' . $id);
            } else {
                redirect('view_post_job/' . $id);
            }
        }
    }

    public function deletepostjob() {
        if ($this->input->is_ajax_request()) {
            $id = $this->input->post('id');
            if (!empty($id)) {
                $response = $this->postjobmodel->deletePostjob($id);
                if ($response)
                    echo $response;
            }
        }
    }

    public function getnotifiy() {
        if ($this->input->is_ajax_request()) {
            $data = $this->postjobmodel->getnotifyallPostjob();
            echo json_encode($data);
            
        }
    }

}
