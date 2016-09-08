<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Browsemodel extends CI_Model {

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    public function getbrowseClients($match = null, $limit = null, $start = null) {
        if (!empty($match)) {
            $arr = array();
            $this->db->select('id');
            $this->db->from('categories');
            $this->db->where('categoryname', $match);
            $this->db->limit(1);
            $query = $this->db->get();
            $result = $query->result();
            if (count($result) > 0) {
                $this->db->select('userId');
                $this->db->from('user_categories');
                $this->db->where('cateId', $result[0]->id);
                $query = $this->db->get();
                $result = $query->result_array();
                if (!empty($result)) {
                    foreach ($result as $key => $value) {
                        $arr[] = $value['userId'];
                    }
                    $this->db->select('U.*,C.city_name as cityname');
                    $this->db->from('users AS U'); // I use aliasing make joins easier
                    $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
                    if (!empty($match)) {
                        $this->db->where_in('U.id', $arr);
                    }
                    $this->db->order_by('U.name ASC');
                    $this->db->limit(10);
                    $result = $this->db->get();
                    $result = $result->result();
                }
            } else {

                $this->db->select('U.*,C.city_name as cityname');
                $this->db->from('users AS U'); // I use aliasing make joins easier
                $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
                $this->db->where('U.type', 'lawyer');
                if (!empty($match)) {

                    $this->db->like('U.name', $match);
                    $this->db->or_like('U.mobile', $match);
                    $this->db->or_like('U.location', $match);
                    $this->db->or_like('U.experience', $match);
                    $this->db->or_like('U.address', $match);
                    $this->db->or_like('U.description', $match);
                    $this->db->or_like('C.city_name', $match);
                }

                $this->db->order_by('U.name ASC');
                $this->db->limit($limit, $start);
                $result = $this->db->get();
                $result = $result->result();
            }
        } else {
            $this->db->select('U.*,C.city_name as cityname');
            $this->db->from('users AS U'); // I use aliasing make joins easier
            $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
            $this->db->where('U.type', 'lawyer');
            $this->db->order_by('U.name ASC');
            $this->db->limit($limit, $start);
            $result = $this->db->get();

            $result = $result->result();
        }

        if (count($result) > 0) {
            return $result;
        }
    }

    public function defult_count($match = NULL) {
        if (!empty($match)) {
            $arr = array();
            $this->db->select('id');
            $this->db->from('categories');
            $this->db->where('categoryname', $match);
            $this->db->limit(1);
            $query = $this->db->get();
            $result = $query->result();
            if (count($result) > 0) {
                $this->db->select('userId');
                $this->db->from('user_categories');
                $this->db->where('cateId', $result[0]->id);
                $query = $this->db->get();
                $result = $query->result_array();
                if (!empty($result)) {
                    foreach ($result as $key => $value) {
                        $arr[] = $value['userId'];
                    }
                    $this->db->select('U.*,C.city_name as cityname');
                    $this->db->from('users AS U'); // I use aliasing make joins easier
                    $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
                    if (!empty($match)) {
                        $this->db->where_in('U.id', $arr);
                    }
                    $this->db->order_by('U.name ASC');
                    $this->db->limit(10);
                    $result = $this->db->get();
                    $result = $result->result();
                }
            } else {
                $this->db->select('U.*,C.city_name as cityname');
                $this->db->from('users AS U'); // I use aliasing make joins easier
                $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
                $this->db->where('U.type', 'lawyer');
                if (!empty($match)) {
                    $this->db->like('U.name', $match);
                    $this->db->or_like('U.mobile', $match);
                    $this->db->or_like('U.location', $match);
                    $this->db->or_like('U.experience', $match);
                    $this->db->or_like('U.address', $match);
                    $this->db->or_like('U.description', $match);
                    $this->db->or_like('C.city_name', $match);
                }

                $this->db->order_by('U.name ASC');
                $this->db->limit($limit, $start);
                $result = $this->db->get();

                $result = $result->result();
            }
        } else {
            $this->db->select('U.*,C.city_name as cityname');
            $this->db->from('users AS U'); // I use aliasing make joins easier
            $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
            $this->db->where('U.type', 'lawyer');
            $this->db->order_by('U.name ASC');
            $this->db->limit($limit, $start);
            $result = $this->db->get();

            $result = $result->result();
        }

        if (count($result) > 0) {
            return count($result);
        }
    }

    public function record_count($match = NULL) {
        $this->db->select('U.*,C.city_name as cityname');
        $this->db->from('users AS U'); // I use aliasing make joins easier
        $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
        $this->db->where('U.type', 'lawyer');
        if (!empty($match)) {
            $this->db->like('U.name', $match);
            $this->db->or_like('U.mobile', $match);
            $this->db->or_like('U.gender', $match);
            $this->db->or_like('U.location', $match);
            $this->db->or_like('U.experience', $match);
            $this->db->or_like('U.address', $match);
            $this->db->or_like('U.description', $match);
            $this->db->or_like('C.city_name', $match);
        }


        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return count($result);
        }
    }

    public function getCategoryatext($match = NULL) {
        if (!empty($match)) {
            $this->db->select("categoryname");
            $this->db->from("categories");
            $this->db->like("categoryname", $match);
            $this->db->limit(10);
            $result = $this->db->get();
            $result = $result->result();
            $data = array();
            if (count($result) > 0) {
                foreach ($result as $key => $value) {
                    $name = $value->categoryname;
                    array_push($data, $name);
                }
            }
        }
        return $data;
    }

}

?>