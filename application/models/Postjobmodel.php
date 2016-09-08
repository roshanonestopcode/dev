<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Postjobmodel extends CI_Model {

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    public function getPostjob($id = NULL, $match = NULL) {
        $this->db->select('P.*,U.name,U.profile_image,C.city_name as cityname,CAT.categoryname');
        $this->db->from('post_case AS P'); // I use aliasing make joins easier
        $this->db->join('users AS U', 'U.id = P.userId', 'left');
        $this->db->join('cities AS C', 'C.city_id = P.city', 'left');
        $this->db->join('categories AS CAT', 'CAT.id = P.category', 'left');

        if (!empty($id)) {
            $this->db->where('P.id >', $id);
            $this->db->order_by('P.id ASC');
        } else {
            $this->db->order_by('P.created_at DESC');
        }
        if (!empty($match)) {
            $this->db->or_like('CAT.categoryname', $match);
            $this->db->or_like('C.city_name', $match);
            $this->db->or_like('P.title', $match);
            $this->db->or_like('P.details', $match);
            $this->db->or_like('P.fee', $match);
        }
        $this->db->limit(10, 0);
        $result = $this->db->get();

        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    public function viewPostjob($id = NULL) {
        $id = base64_decryption($id);
        if (!empty($id)) {

            $this->db->select('P.*,U.name,U.profile_image,C.city_name as cityname,CAT.categoryname');
            $this->db->from('post_case AS P'); // I use aliasing make joins easier
            $this->db->join('users AS U', 'U.id = P.userId', 'left');
            $this->db->join('cities AS C', 'C.city_id = P.city', 'left');
            $this->db->join('categories AS CAT', 'CAT.id = P.category', 'left');
            if (!empty($id)) {
                $this->db->where('P.id', $id);
            }
            $this->db->limit(1);
            $result = $this->db->get();

            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    public function viewProposals($id = NULL) {
        if (!empty($id)) {
            $this->db->select('P.*,U.name,U.profile_image,C.city_name as cityname,CAT.categoryname');
            $this->db->from('post_case AS P'); // I use aliasing make joins easier
            $this->db->join('users AS U', 'U.id = P.userId', 'left');
            $this->db->join('cities AS C', 'C.city_id = P.city', 'left');
            $this->db->join('categories AS CAT', 'CAT.id = P.category', 'left');
            if (!empty($id)) {
                $this->db->where('P.id', $id);
            }
            $this->db->limit(1);

            $result = $this->db->get();

            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    public function saveProposal($data = NULL) {
        if (!empty($data)) {
            $this->db->insert('job_proposal', $data);
            return true;
        }
    }

    public function getmyPostjob() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('P.*,U.name,U.profile_image,C.city_name as cityname,CAT.categoryname');
        $this->db->from('post_case AS P'); // I use aliasing make joins easier
        $this->db->join('users AS U', 'U.id = P.userId', 'left');
        $this->db->join('cities AS C', 'C.city_id = P.city', 'left');
        $this->db->join('categories AS CAT', 'CAT.id = P.category', 'left');
        if (!empty($id)) {
            $this->db->where('P.userId', $id);
        }
        $this->db->order_by('P.created_at DESC');
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    public function viewJobproposal($jobid = NULL) {

        $user = $this->session->userdata('user');
        $id = $user['userId'];
        if (!empty($jobid)) {
            $this->db->select('J.id as pid,J.userId AS proposaluserid,J.jobid proposaljobid,J.proposalamt,J.coverletter,P.title,P.details as jobdetails,U.name,U.profile_image,U.fees,U.experience,U.gender,C.city_name as cityname,CAT.categoryname');
            $this->db->from('job_proposal AS J'); // I use aliasing make joins easier
            $this->db->join('post_case AS P', 'P.id = J.jobid', 'left');
            $this->db->join('users AS U', 'U.id = J.userId', 'left');
            $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
            $this->db->join('categories AS CAT', 'CAT.id = P.category', 'left');
            if (!empty($id)) {
                $this->db->where('J.jobid', $jobid);
            }
            $this->db->order_by('J.created_at DESC');
            $result = $this->db->get();

            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    public function saveAcceptjob($id = NULL) {
        if (!empty($id)) {
            $this->db->select('*');
            $this->db->where('id', $id);
            $query = $this->db->get('job_proposal');
            if ($query->num_rows() > 0) {
                $result = $query->result();
            }
            if (count($result) > 0) {
                $user = $this->session->userdata('user');
                $id = $user['userId'];
                $data = array(
                    'jobid' => $result[0]->jobid,
                    'clientId' => $id,
                    'lawyerId' => $result[0]->userId,
                    'created_at' => date('Y-m-d H:i:s')
                );
                $this->db->insert('accepted_job_proposal', $data);
                return $result[0]->jobid;
            }
        }
    }

    public function postAcceptedjob() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('AP.*,JP.*,PC.*,U.profile_image,U.name,U.mobile,U.email,U.fees,U.experience,U.gender');
        $this->db->from('accepted_job_proposal as AP'); // I use aliasing make joins easier
        $this->db->join('job_proposal as JP', 'JP.id = AP.jobid', 'left');
        $this->db->join('post_case as PC', 'PC.id = JP.jobid', 'left');
        $this->db->join('users as U', 'U.id = AP.lawyerId', 'left');
        if (!empty($id)) {
            $this->db->where('AP.clientId', $id);
        }
        $this->db->order_by('AP.created_at DESC');
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {

            return $result;
        }
    }

    public function myJob() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('AP.*,JP.*,PC.*,U.profile_image,U.name,U.mobile,U.email,U.fees,U.experience,U.gender');
        $this->db->from('accepted_job_proposal as AP'); // I use aliasing make joins easier
        $this->db->join('job_proposal as JP', 'JP.id = AP.jobid', 'left');
        $this->db->join('post_case as PC', 'PC.id = JP.jobid', 'left');
        $this->db->join('users as U', 'U.id = AP.clientId', 'left');
        if (!empty($id)) {
            $this->db->where('AP.lawyerId', $id);
        }
        $this->db->order_by('AP.created_at DESC');
        $result = $this->db->get();
        $result = $result->result();

        if (count($result) > 0) {

            return $result;
        }
    }

    public function geteditPostjob($id = NULL) {
        if (!empty($id)) {
            $this->db->select('*');
            $this->db->where('id', $id);
            $this->db->from('post_case'); // I use aliasing make joins easier
            $result = $this->db->get();
            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    public function updatepostcase($id = NULL, $data = NULL) {
        if (!empty($id)) {
            $this->db->where('id', $id);
            $this->db->update('post_case', $data);
            return true;
        }
    }

    public function downloadpostjobFile($id = NULL) {
        $id = base64_decryption($id);
        if (!empty($id)) {
            $this->db->select('file');
            $this->db->where('id', $id);
            $this->db->from('post_case'); // I use aliasing make joins easier
            $result = $this->db->get();
            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    public function deletePostjob($id = NULL) {
        if (!empty($id)) {
            //$this->db->where('id', $id);
            //$this->db->delete('post_case');
            return $id;
        }
    }

    public function getnotifyallPostjob() {
        $this->db->select('title');
        $this->db->from('post_case'); // I use aliasing make joins easier
        $this->db->limit('1');
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

}
