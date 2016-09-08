<?php

defined('BASEPATH') OR exit('No direct script access allowed');
ini_set('session.cache_limiter', 'private');
class Legalqa extends CI_Controller {

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
        $this->load->model('legalqamodel');
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

    public function index() {
        $data['page'] = 'legal_qa';
        $data['category'] = $this->legalqamodel->getLegalcategory();
        $data['title'] = "Win My Case | Legal Q & A";
        $this->load->view('legalqa/default', $data);
    }

    public function legalquestion($id = NULL) {
        $id = base64_decryption($id);
        if (!empty($id)) {
            $data['page'] = 'legal_qa';
            $data['catename'] = $this->legalqamodel->getCatename($id);
            $data['question'] = $this->legalqamodel->getLegalquestion($id);
            $data['title'] = "Win My Case | Legal Question";
            $this->load->view('legalqa/legalquestion', $data);
        } else {
            redirect('legal_qa');
        }
    }

    public function search_qa_string($string = NULL) {
        if ($this->input->is_ajax_request()) {
            $string = $this->input->get('term');
            $data = $this->legalqamodel->getLegalqatext($string);
            echo json_encode($data);
        }
    }

    public function questionanswer($id = NULL) {
        //die('work is under process');

        $data['page'] = 'legal_qa';
        $data['catename'] = $this->legalqamodel->getCatename($id);
        $data['question'] = $this->legalqamodel->getLegalquestion($id);
        $data['title'] = "Win My Case | Legal Question";
        $this->load->view('legalqa/ques_ans_review', $data);
    }

    public function searchpostquestion() {
        
        $data['page'] = 'legal_qa';
        $data['title'] = "Win My Case | Filter Question";
        $search = $this->input->post('serach');
        if (!empty($search)) {
            $search = $search;
            $_SESSION['search'] = '';
        } else {
            $search = $_SESSION['search'];
        }
        if (!empty($search)) {
            if ($search) {
                $result = $this->legalqamodel->searchallquestionData($search);
                $data['search'] = $result;
                $_SESSION['search'] = $search;
            }
            $this->load->view('legalqa/form_serach_question', $data);
        } else {
            redirect('legal_qa');
        }
    }

    public function answerlist($id = NULL) {
        if (!empty($id)) {
            $data['page'] = 'legal_qa';
            $data['title'] = 'Win My Case | Answer list ';
            $result = $this->legalqamodel->getAnswerreview($id);
            $data['answerreview'] = $result;

            $this->load->view('legalqa/answer_list', $data);
        }
    }

}
