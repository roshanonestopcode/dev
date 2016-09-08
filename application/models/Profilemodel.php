<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Profilemodel extends CI_Model {

    var $title = '';
    var $content = '';
    var $date = '';

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    //Get login user profile details

    public function getClientprofile($userId = NULL) {
        if (!empty($userId)) {
            $this->db->select('U.*,C.city_name as cityname');
            $this->db->from('users AS U'); // I use aliasing make joins easier
            $this->db->join('cities AS C', 'C.city_id = U.city_id', 'left');
            //$this->db->join('gender AS G', 'G.id = U.gender', 'left');
            $this->db->where('U.id', $userId);
            $result = $this->db->get();
            $result = $result->result();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    //Get client category

    public function getClientcategory($userId = NULL) {
        if (!empty($userId)) {
            $this->db->select('cateid');
            $this->db->where('userId', $userId);
            $this->db->from('user_categories'); // I use aliasing make joins easier
            $result = $this->db->get();
            $result = $result->result_array();
            $arr = array();
            if (count($result) > 0) {
                foreach ($result as $key => $value) {
                    $arr[] = $value['cateid'];
                }
            }
            return $arr;
        }
    }

    //Get lawyer Availability

    public function lawyerAvailability($userId = NULL) {
        if (!empty($userId)) {
            $this->db->select('*');
            $this->db->where('userId', $userId);
            $this->db->from('lawyer_availability_time'); // I use aliasing make joins easier
            $result = $this->db->get();
            $result = $result->result();
            $arr = array();
            if (count($result) > 0) {
                return $result;
            }
        }
    }

    //Get lawyer category

    public function getCategory() {

        $this->db->select('*');
        $this->db->from('categories'); // I use aliasing make joins easier
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    //Get lawyer experience

    public function getGender() {

        $this->db->select('*');
        $this->db->from('gender'); // I use aliasing make joins easier
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    //Get lawyer experience

    public function getExperience() {

        $this->db->select('*');
        $this->db->from('experience'); // I use aliasing make joins easier
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    //Get lawyer  Availability time

    public function getAvailabilitytime() {

        $this->db->select('*');
        $this->db->from('availability_time'); // I use aliasing make joins easier
        $result = $this->db->get();
        $result = $result->result();
        if (count($result) > 0) {
            return $result;
        }
    }

    public function getAvailabilitytimevalue() {
        $this->db->select('time');
        $this->db->from('availability_time'); // I use aliasing make joins easier
        $result = $this->db->get();
        $result = $result->result();
        $arr = array();
        if (count($result) > 0) {
            foreach ($result as $key => $value) {
                $arr[] = $value->time;
            }
            return $arr;
        }
    }

    //upload user profile picture

    public function updateprofile($profilepic = NULL) {

        $user = $this->session->userdata('user');
        $id = $user['userId'];

        if (!empty($profilepic)) {
            $data = array('profile_image' => $profilepic);
            $this->db->where('id', $id);
            $this->db->update('users', $data);

            return true;
        }
    }

    public function lawyerAvailabilitytime() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('*');
        $this->db->where('userId', $id);
        $query = $this->db->get('lawyer_availability_time');
        if ($query->num_rows() > 0) {
            $result = $query->result();
            return $result;
        } else {
            return false;
        }
    }

    public function lawyerReview() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('R.rating,R.total_points,R.comment,R.created,U.name');
        $this->db->from('rating AS R'); // I use aliasing make joins easier
        $this->db->join('users AS U', 'R.fromuser_id = U.id', 'left');
        $this->db->where('R.u_id', $id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $result = $query->result();
            return $result;
        } else {
            return false;
        }
    }

    public function getTimeAvailabilitytime_monday() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('monday');
        $this->db->where('userId', $id);
        $query = $this->db->get('lawyer_availability_time');
        if ($query->num_rows() > 0) {
            $result = $query->result();
            foreach ($result as $key => $value) {
                $arr[] = $value->monday;
            }
            return $arr;
        } else {
            return false;
        }
    }

    public function getTimeAvailabilitytime_tuesday() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('tuesday');
        $this->db->where('userId', $id);
        $query = $this->db->get('lawyer_availability_time');
        if ($query->num_rows() > 0) {
            $result = $query->result();
            foreach ($result as $key => $value) {
                $arr[] = $value->tuesday;
            }
            return $arr;
        } else {
            return false;
        }
    }

    public function getTimeAvailabilitytime_wednesday() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('wednesday');
        $this->db->where('userId', $id);
        $query = $this->db->get('lawyer_availability_time');
        if ($query->num_rows() > 0) {
            $result = $query->result();
            foreach ($result as $key => $value) {
                $arr[] = $value->wednesday;
            }
            return $arr;
        } else {
            return false;
        }
    }

    public function getTimeAvailabilitytime_thursday() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('thursday');
        $this->db->where('userId', $id);
        $query = $this->db->get('lawyer_availability_time');
        if ($query->num_rows() > 0) {
            $result = $query->result();
            foreach ($result as $key => $value) {
                $arr[] = $value->thursday;
            }
            return $arr;
        } else {
            return false;
        }
    }

    public function getTimeAvailabilitytime_friday() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('friday');
        $this->db->where('userId', $id);
        $query = $this->db->get('lawyer_availability_time');
        if ($query->num_rows() > 0) {
            $result = $query->result();
            foreach ($result as $key => $value) {
                $arr[] = $value->friday;
            }
            return $arr;
        } else {
            return false;
        }
    }

    public function getTimeAvailabilitytime_saturday() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('saturday');
        $this->db->where('userId', $id);
        $query = $this->db->get('lawyer_availability_time');
        if ($query->num_rows() > 0) {
            $result = $query->result();
            foreach ($result as $key => $value) {
                $arr[] = $value->saturday;
            }
            return $arr;
        } else {
            return false;
        }
    }

    public function getTimeAvailabilitytime_sunday() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('sunday');
        $this->db->where('userId', $id);
        $query = $this->db->get('lawyer_availability_time');
        if ($query->num_rows() > 0) {
            $result = $query->result();
            foreach ($result as $key => $value) {
                $arr[] = $value->sunday;
            }
            return $arr;
        } else {
            return false;
        }
    }

    public function deleteAvailabilitytime() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->where('userId', $id);
        $this->db->delete('lawyer_availability_time');
    }

    public function insertAvailabilitytime($data = NULL) {
        error_reporting(0);
        $this->db->insert('lawyer_availability_time', $data);
    }

    public function updatePractice($profile = NULL, $cate = NULL) {
        if (!empty($profile)) {
            $user = $this->session->userdata('user');
            $id = $user['userId'];
            if (!empty($cate)) {
                $this->db->where('userId', $id);
                $this->db->delete('user_categories');
                $this->db->insert_batch('user_categories', $cate);
            }
            $this->db->where('id', $id);
            $this->db->update('users', $profile);
            return true;
        }
    }

    // Check lawyer time availability exist or not

    public function checkTimeavailabilityexist() {
        $user = $this->session->userdata('user');
        $id = $user['userId'];
        $this->db->select('*');
        $this->db->where('userId', $id);
        $query = $this->db->get('lawyer_availability_time');
        if ($query->num_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

    //Insert multiple lawyer time availability 
    public function insertbatchTimeavailability($data = NULL) {
        if (!empty($data)) {
            $this->db->insert_batch('lawyer_availability_time', $data);
            return TRUE;
        }
    }

    //update multiple lawyer time availability 
    public function updatebatchTimeavailability($data = NULL) {
        if (!empty($data)) {
            $user = $this->session->userdata('user');
            $this->db->update_batch('lawyer_availability_time', $data, 'id');
            return TRUE;
        }
    }

}

?>
