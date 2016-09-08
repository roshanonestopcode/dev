<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Legalqamodel extends CI_Model {

    var $title = '';
    var $content = '';
    var $date = '';

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    public function getLegalcategory() {
        $this->db->select('*');
        $this->db->from('categories'); // I use aliasing make joins easier
        $this->db->order_by('categoryname ASC');
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    public function getCatename($id) {
        $this->db->select('categoryname');
        $this->db->from('categories'); // I use aliasing make joins easier
        $this->db->where('id', $id);
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    public function getLegalquestion($id = NULL) {
        if (!empty($id)) {
            $this->db->select('*');
            $this->db->from('questions'); // I use aliasing make joins easier
            if (!empty($id)) {
                $this->db->where('cat_id', $id);
            }
            $result = $this->db->get();
            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    public function getLegalqatext($match = NULL) {
        if (!empty($match)) {
            $this->db->select("categoryname");
            $this->db->from("categories");
            $this->db->like("categoryname", $match);
            $this->db->get();
            $query1 = $this->db->last_query();

            $this->db->select("question");
            $this->db->from("questions");
            $this->db->like("question", $match);
            $this->db->get();
            $query2 = $this->db->last_query();


            $query = $this->db->query($query1 . " UNION " . $query2 . "limit 5");
            $result = $query->result();
            $data = array();
            if (count($result) > 0) {
                foreach ($result as $key => $value) {
                    $name = validStrLen($value->categoryname, 80) . '|' . validStrLen($value->question, 80);
                    array_push($data, $name);
                }
            }
        }
        return $data;
    }

    public function getSearchqatext($match = NULL) {
        if (!empty($match)) {
            $this->db->select("categoryname");
            $this->db->from("categories");
            $this->db->like("categoryname", $match);
            $this->db->get();
            $query1 = $this->db->last_query();
            $this->db->select("question");
            $this->db->from("questions");
            $this->db->like("question", $match);
            $this->db->get();
            $query2 = $this->db->last_query();
            $query = $this->db->query($query1 . " UNION " . $query2 . "limit 5");
            $result = $query->result();
            $data = array();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    public function searchallquestionData($match = array()) {
        if (!empty($match)) {
            $this->db->select('q.*,U.name,U.profile_image,C.city_name as cityname,CAT.categoryname');
            $this->db->from('questions AS q'); // I use aliasing make joins easier
            $this->db->join('users AS U', 'U.id = q.u_id');
            $this->db->join('cities AS C', 'C.city_id = U.city_id');
            $this->db->join('categories AS CAT', 'CAT.id = q.cat_id');
            if (!empty($match)) {
                $this->db->or_like('CAT.categoryname', $match);
                $this->db->or_like('C.city_name', $match);
                $this->db->or_like('q.point', $match);
                $this->db->or_like('q.question', $match);
            }
            $this->db->limit(10, 0);
            $result = $this->db->get();
            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    public function getAnswerreview($id = NULL) {
        if (!empty($id)) {
            $this->db->select('M.message,Q.question,Q.point,Q.created_on as qdate,M.created_at,U.name,U.experience,U.profile_image,C.city_name as cityname,CAT.categoryname');
            $this->db->from('messages AS M');
            $this->db->join('questions AS Q', 'Q.id = M.question_id');
            $this->db->join('users AS U', 'U.id = M.to_user_id');
            $this->db->join('cities AS C', 'C.city_id = U.city_id');
            $this->db->join('categories AS CAT', 'CAT.id = Q.cat_id');
            if (!empty($id)) {
                $this->db->where('M.question_id', base64_decryption($id));
            }
            $result = $this->db->get();
            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

}

?>