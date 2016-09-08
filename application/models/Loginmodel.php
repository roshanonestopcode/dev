<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Loginmodel extends CI_Model {

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    //check email already exist or not
    public function isEmailExist($email) {
        $this->db->select('id');
        $this->db->where('email', $email);
        $query = $this->db->get('users');
		
        if ($query->num_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

    //Save sign up form

    public function saveSignup($data = NULL) {
        if (!empty($data)) {
			
            $this->db->insert('users', $data);
            return $this->db->insert_id();
        }
    }

    //Get users role

    public function getRole() {
        $this->db->select('*');
		
        $this->db->where('id!=1');
        $query = $this->db->get('usertypes');
        return $query->result();
    }

    //get All City
    public function getCity() {
		
        $this->db->select('city_id,city_name');
        $this->db->order_by('city_name ASC');
        $query = $this->db->get('cities');
        return $query->result();
    }

    /*
     * 	This function checks weather the usersname exists or not
     * 	Return value : array
     */

    public function isUserExists($usersname = NULL, $password = NULL, $access = 0) {
        /* Check if accountant is trying to login with client access detail */
	
        $usersname = $this->db->escape($usersname);
        $password = md5($password);
        if ($access) {
            $status = 'AND users.verify = 0';
        } else {
            $status = ' AND users.verify = 1';
        }
        if ($usersname != NULL) {
            $query = 'SELECT id,name,email,mobile,type from users';
            $query .= " WHERE (users.usersname=" . $usersname . " OR users.email=" . $usersname . ") AND users.password ='$password' " . $status;
            $query = $this->db->query($query);
            $db_error = $this->db->error();
            if ($db_error['code'] != 0) {
                log_message('error', $db_error['message']);
                return FALSE;
            }
            if ($query->num_rows() > 0) {
                $data = $query->result();
                return $data;
            } else {
                return FALSE;
            }
        } else {
            return FALSE;
        }
    }

    public function getUserdata($id = NULL) {
		
        /* Check if email is trying to login with client access detail */
        if ($id != NULL) {
            $this->db->select('id,email,name');
            $this->db->where('id', $id);
            $query = $this->db->get('users');
            if ($query->num_rows() > 0) {
                $result = $query->result();
                return $result;
            } else {
                return false;
            }
        }
    }

    public function verified($id = null) {
        if (!empty($id)) {
			
            $data = array('verify' => 1);
            $this->db->where('id', $id);
            $this->db->update('users', $data);
            $this->db->select('id,email,name,type');
            $this->db->where('id', $id);
            $query = $this->db->get('users');
            if ($query->num_rows() > 0) {
                $result = $query->result();
                return $result;
            } else {
                return false;
            }
        }
    }

    public function updatelicence($id = NULL, $licence = NULL) {
        if (!empty($id)) {
			
            $user = $this->session->userdata('user');
            $data = array('licence' => $licence);
            $this->db->where('id', $id);
            $this->db->update('users', $data);
            if (!empty($user)) {
                if ($user['type'] == 'lawyer') {
                    $user['licence'] = $licence;
                    $this->session->set_userdata('user', $user);
                }
            }
            return true;
        }
    }

    public function facebookLogin($users) {
		
        $this->db->select('*');
	$this->db->where('facebookId', $users['id']);
        $this->db->limit(1);
        $query = $this->db->get('users');
        if ($query->num_rows() > 0) {
            $data = array(
                'name' => $users['first_name'] . " " . $users['last_name'],
                'email' => $users['email'],
                'gender' => ucfirst($users['gender']),
                'profile_image' => $users['picture']['data']['url'],
            );
            $this->db->where('facebookId', $users['id']);
            $this->db->update('users', $data);
        }
        $this->db->select('*');
        $this->db->where('facebookId', $users['id']);
        $this->db->limit(1);
        $query = $this->db->get('users');
        if ($query->num_rows() > 0) {
            $data = $query->result();
            $data = $data[0];
            return $data;
        } else {
            return FALSE;
        }
    }

    public function addFacebookUser($users) {
		
        $createdOn = date('Y-m-d H:i:s');
        $type = $this->session->userdata('type');
        $data = array(
            'facebookId' => $users['id'],
            'name' => $users['first_name'] . " " . $users['last_name'],
            'email' => $users['email'],
            'gender' => ucfirst($users['gender']),
            'type' => $type,
            'created_at' => $createdOn,
            'profile_image' => $users['picture']['data']['url'],
        );
       
        $this->db->insert("users", $data);
        
        $id = $this->db->insert_id();

        $this->db->select('*');
        $this->db->where('id', $id);
        $this->db->limit(1);
        $query = $this->db->get('users');
        if ($query->num_rows() > 0) {
            $data = $query->result();
            $data = $data[0];
            return $data;
        } else {
            return FALSE;
        }
    }

    public function googleLogin($usersData) {
		
        $this->db->select('*');
        $this->db->where('googleId', $usersData['oauth_uid']);
        $this->db->limit(1);
        $query = $this->db->get('users');
        if ($query->num_rows() > 0) {
            $data = $query->result();
            $data = $data[0];
            return $data;
        } else {
            return FALSE;
        }
    }

    public function addGoogleUser($usersData) {
		
        $createdOn = date('Y-m-d H:i:s');
        $data = array(
            'googleId' => $usersData['oauth_uid'],
            'name' => $usersData['first_name'] . ' ' . $usersData['last_name'],
            'email' => $usersData['email'],
            'googlePictureUrl' => $usersData['picture_url'],
            'createdOn' => $createdOn,
        );
        $this->db->insert("users", $data);
        $id = $this->db->insert_id();

        $this->db->select('*');
        $this->db->where('id', $id);
        $this->db->limit(1);
        $query = $this->db->get('users');
        if ($query->num_rows() > 0) {
            $data = $query->result();
            $data = $data[0];
            return $data;
        } else {
            return FALSE;
        }
    }

    public function updateGoogleUser($usersData) {
		
        // print_r($usersData); die();
        $data = array(
            'googleId' => $usersData['oauth_uid'],
            'name' => $usersData['first_name'] . ' ' . $usersData['last_name'],
            'email' => $usersData['email'],
            'googlePictureUrl' => $usersData['picture_url'],
        );
        $this->db->where('googleId', $usersData['oauth_uid']);
        $this->db->update("users", $data);

        $this->db->select('*');
        $this->db->where('googleId', $usersData['oauth_uid']);
        $this->db->limit(1);
        $query = $this->db->get('users');
        if ($query->num_rows() > 0) {
            $data = $query->result();
            $data = $data[0];
            return $data;
        } else {
            return FALSE;
        }
    }

    public function customLogin($data = null) {
        if (!empty($data)) {
			

            $this->db->select('*');
            $this->db->from('users');
            $this->db->where('email', $data['email']);
            $this->db->where('password_hash', MD5($data['password_hash']));
            //$this->db->where('status', 1);

            $this->db->limit(1);
            $query = $this->db->get();
            if ($query->num_rows() == 1) {
                return $query->result();
            } else {
                return false;
            }
        }
    }

    public function checkusersInfo($data) {
        if (!empty($data)) {
			
            $this->db->select('*');
            $this->db->from('users');
            $this->db->where('id', $data['usersId']);
            $this->db->where('status', 1);
            $this->db->limit(1);
            $query = $this->db->get();
            if ($query->num_rows() == 1) {
                return $query->result();
            } else {
                return false;
            }
        }
    }

    public function isEmailExists($email = NULL) {
        /* Check if email is trying to login with client access detail */
        if ($email != NULL) {
			
            $this->db->select('*');
            $this->db->where('email', $email);
            $query = $this->db->get('users');
            if ($query->num_rows() > 0) {
                return $query->result();
            } else {
                return false;
            }
        }
    }

    /*
     * 	This function adds a token in the users table to check if recovery process is valid or not.
     * 	Return Value : Boolean
     */

    public function addToken($token = NULL, $email = NULL) {
        if ($token != NULL && $email != NULL) {
			
            $query = $this->db->query('UPDATE users SET Token = "' . $token . '" WHERE Email="' . $email . '"');
            if ($this->db->affected_rows() > 0) {
                return TRUE;
            } else {
                return FALSE;
            }
        } else {
            return FALSE;
        }
    }

    public function checkToken($token = NULL) {
        if (!empty($token)) {
			
            $prefix = $this->db->dbprefix;
            $query = "SELECT id FROM users WHERE Token='" . $token[0] . "' AND Email='" . $token[1] . "'";
            $query = $this->db->query($query);
            /* CHECK FOR DB ERRORS */
            $db_error = $this->db->error();
            if ($db_error['code'] != 0) {
                log_message('error', $db_error['message']);
                return FALSE;
            }

            if ($query->num_rows() > 0) {
                return $query->result();
            } else {
                return FALSE;
            }
        } else {
            return FALSE;
        }
    }

    //update password

    public function updateUserPassword($data) {
		
        $id = $data['id'];
        unset($data['id']);
        $data['Token'] = '';
        $this->db->where('id', $id);
        $this->db->update('users', $data);
        /* CHECK FOR DB ERRORS */
        $db_error = $this->db->error();
        if ($db_error['code'] != 0) {
            log_message('error', $db_error['message']);
            return FALSE;
        }
        if ($this->db->affected_rows() > 0) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

}

?>
