<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Forums extends CI_Controller {

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
        $this->load->model('forummodel');
        $this->load->model('legalqamodel');
        $this->load->library('Ajax_pagination');
        $this->perPage = PAGINATION_PER_PAGE;
    }

    public function index() {

        $_SESSION["match"] = '';
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $data['title'] = 'Win My Case | Forums';
        $data['page'] = 'forum';
        $data['category'] = $this->legalqamodel->getLegalcategory();
        $this->load->view('forum/default', $data);
    }

    public function myquestion() {
        $_SESSION["match"] = '';
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $data['title'] = 'Win My Case | Forums';
        $data['page'] = 'forum';
        $config['target'] = '#postList';
        $config['base_url'] = base_url() . 'forums/ajaxPaginationData';
        $config['total_rows'] = $this->forummodel->defult_count();
        $config['per_page'] = $this->perPage;
        $this->ajax_pagination->initialize($config);
        $data['category'] = $this->forummodel->getCategory();
        $data['question'] = $this->forummodel->getQuestions($match, $this->perPage, 0);

        $this->load->view('forum/myquestion', $data);
    }

    function ajaxPaginationData() {
        $page = $this->input->get('page');
        $match = '';
        if (!$page) {
            $offset = 0;
        } else {
            $offset = $page;
        }
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && $this->input->is_ajax_request()) {
            $_SESSION["match"] = '';
            $search = $this->input->post('search');
            $_SESSION["match"] = $search;
        }
        $match = $_SESSION["match"];
        //total rows count
        $totalRec = $this->forummodel->record_count($match);

        //pagination configuration
        $config['target'] = '#postList';
        $config['base_url'] = base_url() . 'forums/ajaxPaginationData';
        $config['total_rows'] = $totalRec;
        $config['per_page'] = $this->perPage;
        $this->ajax_pagination->initialize($config);
        //get the posts data
        $data['question'] = $this->forummodel->getQuestions($match, $this->perPage, $offset);

        //load the view
        $this->load->view('forum/ajax-pagination-data', $data, false);
    }

    public function form() {
        if ($this->input->is_ajax_request()) {
            $post = $this->input->post('pdata');
            $data['category'] = $this->forummodel->getallCategory();
            $data['postdata'] = $post;
            $this->load->view('forum/form', $data);
        }
    }

    public function updateform() {
        if ($this->input->is_ajax_request()) {
            $id = $this->input->post('id');
            $data['category'] = $this->forummodel->getallCategory();
            $data['question'] = $this->forummodel->getupdatedQuestion($id);
            $this->load->view('forum/updateform', $data);
        }
    }

    public function save() {
        $response = '';
        if ($this->input->is_ajax_request()) {
            $user = $this->session->userdata('user');
            $rowid = $this->input->post('id');
            $id = $user['userId'];
            $data = array(
                'cat_id' => $this->input->post('category'),
                'anonymous' => $this->input->post('anonymous'),
                'question' => $this->input->post('question'),
                'point' => $this->input->post('point'),
                'u_id' => $id,
                'created_on' => date('Y-m-d H:i:s'),
            );
            if (!empty($rowid)) {
                $response = $this->forummodel->update($data, $rowid);
            } else {
                $response = $this->forummodel->insert($data);
            }
        }
        if ($response == 1) {
            echo json_encode(1);
            exit();
        }
    }

    public function delete() {
        if ($this->input->is_ajax_request()) {
            $id = $this->input->post('id');
            if (!empty($id)) {
                $response = $this->forummodel->delete($id);
                if ($response) {
                    echo json_encode(1);
                }
            }
        }
    }

    public function deleteanswer() {
        if ($this->input->is_ajax_request()) {
            $id = $this->input->post('id');
            if (!empty($id)) {
                $response = $this->forummodel->deleteAns($id);
                if ($response) {
                    echo json_encode(1);
                }
            }
        }
    }

    public function postanswer($id = NULL) {
        $id = base64_decode($id);
        if (!empty($id)) {
            $response = $this->forummodel->getForumdata($id);
            if (!empty($response)) {
                $data['forumquestion'] = $response;
                $data['title'] = 'Forum';
                $data['page'] = 'forum_question_answer';
                $data['answer'] = $this->forummodel->getuserAnswer($id);
                $this->load->view('forum/postform', $data);
            } else {
                redirect('client_forum');
            }
        } else {
            redirect('client_forum');
        }
    }

    public function saveanswer() {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $from_user_id = $this->input->post('from_user_id');
            $to_user_id = $this->input->post('to_user_id');
            $answer = $this->input->post('answer');
            $questionid = $this->input->post('question_id');
            if ($answer == '') {
                $msg = '<div class="alert alert-danger" id="errorMessage"><i class="glyphicon glyphicon-exclamation-sign"></i>&nbsp;Please enter your answer</div>';
                $this->session->set_flashdata("actionMessage", $msg);
                redirect("post_answer/" . base64_encode($questionid));
            }
            $data = array(
                'from_user_id' => $from_user_id,
                'to_user_id' => $to_user_id,
                'question_id' => $questionid,
                'message' => $answer,
                'created_at' => date('Y-m-d H:i')
            );
            if (!empty($data)) {
                $response = $this->forummodel->saveans($data);
                if ($response) {
                    $msg = '<div class="alert alert-success" id="successMessage"><i class="glyphicon glyphicon-exclamation-sign"></i>&nbsp;Answer added successfully</div>';
                    $this->session->set_flashdata("actionMessage", $msg);
                    redirect("post_answer/" . base64_encode($questionid));
                }
            }
        }
    }

    public function updateanswer() {
        if ($this->input->is_ajax_request()) {
            $id = $this->input->post('id');
            $ans = $this->input->post('answer');
            $data = array(
                'message' => $ans,
            );

            $response = $this->forummodel->updateanswer($id, $data);
            if ($response) {
                echo json_encode(1);
            }
        }
    }

    public function postlegalquestion($id = NULL) {
        $id = base64_decryption($id);
        if (!empty($id)) {
            $data['page'] = 'legal_qa';
            $data['catename'] = $this->legalqamodel->getCatename($id);
            $data['question'] = $this->legalqamodel->getLegalquestion($id);
            $data['title'] = "Win My Case | Legal Question";
            $this->load->view('forum/list_question', $data);
        } else {
            redirect('client_forum');
        }
    }

}

?>
