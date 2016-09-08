<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Clientmodel extends CI_Model {

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    public function getClients($match = null, $limit = null, $start = null) {
        $this->db->select('U.*,C.city_name as cityname');
        $this->db->from('users AS U'); // I use aliasing make joins easier
        $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
        if (!empty($match)) {
            $this->db->or_like('U.name', $match);
            $this->db->or_like('U.mobile', $match);
            $this->db->or_like('U.gender', $match);
            $this->db->or_like('U.location', $match);
            $this->db->or_like('U.experience', $match);
            $this->db->or_like('U.address', $match);
            $this->db->or_like('U.description', $match);
            $this->db->or_like('C.city_name', $match);
        }
        $this->db->order_by('U.name ASC');
        $this->db->limit($limit, $start);
        if (!empty($userId)) {
            $this->db->where('U.id', $userId);
        } else {
            $this->db->where('U.type', 'lawyer');
        }
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    public function defult_count() {
        $this->db->select('U.*,C.city_name as cityname');
        $this->db->from('users AS U'); // I use aliasing make joins easier
        $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
        $this->db->where('U.type', 'lawyer');
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return count($result);
        }
    }

    public function record_count($match) {
        $this->db->select('U.*,C.city_name as cityname');
        $this->db->from('users AS U'); // I use aliasing make joins easier
        $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
        if (!empty($match)) {
            $this->db->or_like('U.name', $match);
            $this->db->or_like('U.mobile', $match);
            $this->db->or_like('U.gender', $match);
            $this->db->or_like('U.location', $match);
            $this->db->or_like('U.experience', $match);
            $this->db->or_like('U.address', $match);
            $this->db->or_like('U.description', $match);
            $this->db->or_like('C.city_name', $match);
        }

        $this->db->where('U.type', 'lawyer');

        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return count($result);
        }
    }

    public function getViewclient($id = NULL) {
        if (!empty($id)) {
            $this->db->select('U.*,C.city_name as cityname');
            $this->db->from('users AS U'); // I use aliasing make joins easier
            $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
            if (!empty($id)) {
                $this->db->where('U.id', $id);
            }
            $result = $this->db->get();
            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    public function getReview($id = NULL) {

        if (!empty($id)) {
            $this->db->select('R.*,U.name');
            $this->db->from('rating AS R'); // I use aliasing make joins easier
            $this->db->join('users AS U', 'U.id = R.fromuser_id', 'left');
            if (!empty($id)) {
                $this->db->where('R.u_id', $id);
            }
            $result = $this->db->get();
            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    public function savecomment($data = NULL) {
        if (!empty($data)) {
            $this->db->insert('rating', $data);
            return true;
        }
    }

    public function savepostcase($data = NULL) {
        if (!empty($data)) {
            $this->db->insert('post_case', $data);
            return true;
        }
    }

}
