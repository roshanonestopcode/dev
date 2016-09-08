<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Chatmodel extends CI_Model {

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    public function getAllUser() {
        $this->db->select('id,name,profile_image as ProfilePictureUrl,status,email,roomId,Online');
        $this->db->order_by('Online DESC');
        $query = $this->db->get('users');
        if ($query->num_rows() > 0) {
            return $query->result();
        } else {
            return false;
        }
    }

}

?>