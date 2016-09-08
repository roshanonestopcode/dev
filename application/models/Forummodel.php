<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Forummodel extends CI_Model {

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    public function getQuestions($match = null, $limit = null, $start = null) {

        $this->db->select('Q.*,U.name,U.profile_image,C.city_name as cityname');
        $this->db->from('questions AS Q'); // I use aliasing make joins easier
        $this->db->join('users AS U', 'U.id = Q.u_id', 'left');
        $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
        $this->db->order_by('DATE(Q.created_on) DESC');
        $this->db->limit($limit, $start);
        $user = $this->session->userdata('user');
        $id = $user['userId'];

        if (!empty($match)) {
            $this->db->or_like('Q.question', $match);
            //$this->db->or_like('C.city_name', $match);
        }
        if (!empty($id) && $user['type'] == 'client') {
            $this->db->where('Q.u_id', $id);
        }

        $result = $this->db->get();


        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    public function record_count($match) {
        $this->db->select('Q.*,U.name,U.profile_image,C.city_name as cityname');
        $this->db->from('questions AS Q'); // I use aliasing make joins easier
        $this->db->join('users AS U', 'U.id = Q.u_id', 'left');
        $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
        if (!empty($match)) {
            $this->db->or_like('Q.question', $match);
            $this->db->or_like('C.city_name', $match);
        }
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        if (!empty($id)) {
            $this->db->where('Q.u_id', $id);
        }
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return count($result);
        }
    }

    public function defult_count() {
        $user = $this->session->userdata('user');
        $this->db->select('*');
        $this->db->where('u_id', $user['userId']);
        $query = $this->db->get('questions');
        if ($query->num_rows() > 0) {
            return count($query->result());
        } else {
            return false;
        }
    }

    public function getCategory() {

        $this->db->select('*');
        $this->db->from('categories'); // I use aliasing make joins easier
        $this->db->order_by('categoryname ASC');
        $this->db->limit('10');
        $result = $this->db->get();

        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    public function getallCategory() {
        $this->db->select('*');
        $this->db->from('categories'); // I use aliasing make joins easier
        $this->db->order_by('categoryname ASC');
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    public function insert($data = NULL) {
        $this->db->insert('questions', $data);
        return true;
    }

    public function update($data = NULL, $id = NULL) {
        if (!empty($data) && !empty($id)) {
            $this->db->where('id', $id);
            $this->db->update('questions', $data);
            return true;
        }
    }

    public function delete($id = NULL) {
        $this->db->where('id', $id);
        $this->db->delete('questions');
        return true;
    }

    public function deleteAns($id = NULL) {
        $this->db->where('message_id', $id);
        $this->db->delete('messages');
        return true;
    }

    public function getupdatedQuestion($id = NULL) {
        if (!empty($id)) {
            $this->db->select('*');
            $this->db->where('id', $id);
            $query = $this->db->get('questions');
            if ($query->num_rows() > 0) {
                return $query->result();
            } else {
                return false;
            }
        }
    }

    public function getForumdata($id = NULL) {
        if (!empty($id)) {
            $this->db->select('Q.*,U.name,U.profile_image,C.city_name as cityname');
            $this->db->from('questions AS Q'); // I use aliasing make joins easier
            $this->db->join('users AS U', 'U.id = Q.u_id', 'left');
            $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
            if (!empty($id)) {
                $this->db->where('Q.id', $id);
            }
            $result = $this->db->get();
            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    public function saveans($data = NULL) {
        if (!empty($data)) {
            $this->db->insert('messages', $data);
            return true;
        }
    }

    public function getuserAnswer($id = NULL) {
        if (!empty($id)) {
            $this->db->select('M.*,U.name,U.profile_image');
            $this->db->from('messages AS M'); // I use aliasing make joins easier
            $this->db->join('users AS U', 'U.id = M.from_user_id', 'left');
            $this->db->where('question_id', $id);
            $query = $this->db->get();
            if ($query->num_rows() > 0) {
                return $query->result();
            } else {
                return false;
            }
        }
    }

    public function updateanswer($id = NULL, $data = NULL) {
        if (!empty($id)) {
            $this->db->where('message_id', $id);
            $this->db->update('messages', $data);
            return true;
        }
    }

}

?>