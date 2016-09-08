<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

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
        $this->load->model('profilemodel');
        $this->load->model('loginmodel');
    }

    public function index() {
       
        $user = $this->session->userdata('user');
        $data['title'] = $user['name'];
        $data['page'] = 'profile';
        $data['clientprofile'] = $this->profilemodel->getClientprofile($user['userId']);
        $clientprofile = $data['clientprofile'];
        $lat = $clientprofile[0]->lat;
        $long = $clientprofile[0]->longitude;
        //Map setting
        $this->load->library('googlemaps');
        //$config['onload'] = "google.maps.event.trigger(marker_0, 'click');";
        $config['center'] = "$lat, $long";
        $config['zoom'] = '16';
        $this->googlemaps->initialize($config);
        $marker = array();
        $marker['title'] = $clientprofile[0]->address;
        $marker['position'] = $clientprofile[0]->address;
        $marker['infowindow_content'] = $clientprofile[0]->address;

        $marker['visible'] = TRUE;
        $this->googlemaps->add_marker($marker);
        $data['map'] = $this->googlemaps->create_map();
        //End map setting
        $data['time'] = $this->profilemodel->getAvailabilitytimevalue();


        $data['clientcategory'] = $this->profilemodel->getClientcategory($user['userId']);
        $data['lawyeravailability'] = $this->profilemodel->lawyerAvailability($user['userId']);
        $data['review'] = $this->profilemodel->lawyerReview();
        $this->load->view('profile/default', $data);
    }

    public function editprofile() {
     
        $user = $this->session->userdata('user');
        $data['title'] = " Edit Profile | " . $user['name'];
        $data['page'] = 'practice';
        $data['city'] = $this->loginmodel->getCity();

        $data['clientcategory'] = $this->profilemodel->getClientcategory($user['userId']);
        $data['gender'] = $this->profilemodel->getGender();
        $data['clientprofile'] = $this->profilemodel->getClientprofile($user['userId']);
        $data['category'] = $this->profilemodel->getCategory();
        $data['experience'] = $this->profilemodel->getExperience();
        $data['time'] = $this->profilemodel->getAvailabilitytime();
        $data['lawyeravailabilitytime'] = $this->profilemodel->lawyerAvailabilitytime();
        $data['timeabilitymonday'] = $this->profilemodel->getTimeAvailabilitytime_monday();

        $data['timeabilitytuesday'] = $this->profilemodel->getTimeAvailabilitytime_tuesday();
        $data['timeabilitywednesday'] = $this->profilemodel->getTimeAvailabilitytime_wednesday();
        $data['timeabilitythursday'] = $this->profilemodel->getTimeAvailabilitytime_thursday();
        $data['timeabilityfriday'] = $this->profilemodel->getTimeAvailabilitytime_friday();
        $data['timeabilitysaturday'] = $this->profilemodel->getTimeAvailabilitytime_saturday();
        $data['timeabilitysunday'] = $this->profilemodel->getTimeAvailabilitytime_sunday();
        $data['poid'] = $this->profilemodel->lawyerAvailabilitytime();

        $this->load->view('profile/edit_practice_form', $data);
    }

    public function practice() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            //variable and array
            $match_details = array();
            $cate = array();
            $user = $this->session->userdata('user');
            $id = $user['userId'];
            //basic info
            $fullname = $this->input->post('fullname');
            $roletype = $this->input->post('roletype');
            $gender = $this->input->post('gender');
            $email = $this->input->post('email');
            $mobile = $this->input->post('mobile');
            $city = $this->input->post('city');
            $exp = $this->input->post('exp');
            $fees = $this->input->post('fees');
            $description = $this->input->post('description');

            $street = $this->input->post('street');
            $additional = $this->input->post('additional');
            $mcity = $this->input->post('mcity');
            $state = $this->input->post('state');
            $postalcode = $this->input->post('postalcode');
            $address = $street . "," . $additional . "," . $mcity . "," . $state . "," . $postalcode;
            if (!empty($address)) {
                $latLong = getLatLong($address);
                $latitude = $latLong['latitude'] ? $latLong['latitude'] : 'Not found';
                $longitude = $latLong['longitude'] ? $latLong['longitude'] : 'Not found';
            } else {
                $latitude = $latitude;
                $longitude = $longitude;
            }

            //lawyer time  availability
            if ($roletype == 'lawyer') {
                $match_details = array();
                $poid = $this->input->post('poid');
                $monday = $this->input->post('monday');
                $tuesday = $this->input->post('tuesday');
                $wednesday = $this->input->post('wednesday');
                $thursday = $this->input->post('thursday');
                $friday = $this->input->post('friday');
                $saturday = $this->input->post('saturday');
                $sunday = $this->input->post('sunday');


                $monday1 = $this->input->post('monday1');
                $tuesday1 = $this->input->post('tuesday1');
                $wednesday1 = $this->input->post('wednesday1');
                $thursday1 = $this->input->post('thursday1');
                $friday1 = $this->input->post('friday1');
                $saturday1 = $this->input->post('saturday1');
                $sunday1 = $this->input->post('sunday1');


                foreach ($monday1 as $key => $value) {
                    if (in_array($value, $monday)) {
                        $marr[$key] = $value;
                    } else {
                        $marr[$key] = '';
                    }
                }
                $monday = $marr;


                foreach ($tuesday1 as $key => $value) {
                    if (in_array($value, $tuesday)) {
                        $tarr[$key] = $value;
                    } else {
                        $tarr[$key] = '';
                    }
                }
                $tuesday = $tarr;


                foreach ($wednesday1 as $key => $value) {
                    if (in_array($value, $wednesday)) {
                        $warr[$key] = $value;
                    } else {
                        $warr[$key] = '';
                    }
                }
                $wednesday = $warr;


                foreach ($thursday1 as $key => $value) {
                    if (in_array($value, $thursday)) {
                        $tharr[$key] = $value;
                    } else {
                        $tharr[$key] = '';
                    }
                }
                $thursday = $tharr;


                foreach ($friday1 as $key => $value) {
                    if (in_array($value, $friday)) {
                        $farr[$key] = $value;
                    } else {
                        $farr[$key] = '';
                    }
                }
                $friday = $farr;


                foreach ($saturday1 as $key => $value) {
                    if (in_array($value, $saturday)) {
                        $sarr[$key] = $value;
                    } else {
                        $sarr[$key] = '';
                    }
                }
                $saturday = $sarr;


                foreach ($sunday1 as $key => $value) {
                    if (in_array($value, $sunday)) {
                        $suarr[$key] = $value;
                    } else {
                        $suarr[$key] = '';
                    }
                }
                $sunday = $suarr;

                $checktimeaviexist = $this->profilemodel->checkTimeavailabilityexist();
                if ($checktimeaviexist) {
                    for ($i = 0; $i <= 15; $i++) {
                        $match_details[] = array(
                            'monday' => $monday[$i],
                            'tuesday' => $tuesday[$i],
                            'wednesday' => $wednesday[$i],
                            'thursday' => $thursday[$i],
                            'friday' => $friday[$i],
                            'saturday' => $saturday[$i],
                            'sunday' => $sunday[$i],
                            'userId' => $user['userId'],
                            'modified_on' => date('Y-m-d'),
                            'id' => $poid[$i]
                        );
                    }

                    $updateBatchfile = $this->profilemodel->updatebatchTimeavailability($match_details);
                } else {

                    for ($i = 0; $i <= 15; $i++) {
                        $match_details[] = array(
                            'monday' => $monday[$i],
                            'tuesday' => $tuesday[$i],
                            'wednesday' => $wednesday[$i],
                            'thursday' => $thursday[$i],
                            'friday' => $friday[$i],
                            'saturday' => $saturday[$i],
                            'sunday' => $sunday[$i],
                            'userId' => $user['userId'],
                            'created_on' => date('Y-m-d'),
                        );
                    }
                    $insertBatchfile = $this->profilemodel->insertbatchTimeavailability($match_details);
                }
            }


            $profile = array(
                'description' => $description,
                'email' => $email,
                'city_id' => $city,
                'gender' => $gender,
                'mobile' => $mobile,
                'experience' => $exp,
                'name' => $fullname,
                'lat' => $latitude,
                'longitude' => $longitude,
                'address' => $address,
                'fees'=>$fees,
            );
            if (isset($_FILES) && !empty($_FILES['userfile']['name'])) {
                $ext = pathinfo($_FILES['userfile']['name'], PATHINFO_EXTENSION);
                $_FILES['userfile']['name'] = date('d') . "_" . rand(1000, 9999) . "_" . date('his') . "." . $ext;
                $config['upload_path'] = './uploads/';
                $_SESSION['img'] = '';
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size'] = '2048000';
                $config['max_width'] = '1024';
                $config['max_height'] = '768';
                $this->load->library('upload', $config);
                $config['file_name'] = "ProfileImage" . "_" . rand(1000, 9999) . "_" . date('d');
                if (!$this->upload->do_upload('userfile')) {
                    $error = $this->upload->display_errors();
                    $data['error'] = "<div class='alert alert-danger text-center'><i class='glyphicon glyphicon-exclamation-sign'></i>&nbsp;" . $error . "</div>";
                } else {
                    $img = $this->upload->data();
                    $uploadurl = base_url() . "uploads/" . $img['file_name'];

                    $response = $this->profilemodel->updateprofile($uploadurl);
                    if ($response)
                        $data['upload_data'] = "<div class='alert alert-success text-center'><i class='glyphicon glyphicon-exclamation-sign'></i>&nbsp;Licence Upload Successfully, Your licence is under process</div>";
                }
            }

            $category = $this->input->post('category');
            if (!empty($category)) {
                foreach ($category as $key => $value) {
                    $cate[$key] = array(
                        'userId' => $id,
                        'cateId' => $value,
                        'created_on' => date('Y-m-d')
                    );
                }
                $response = $this->profilemodel->updatePractice($profile, $cate);
            } else {
                $cate = '';
                $response = $this->profilemodel->updatePractice($profile, $cate);
            }

            redirect('user_profile');
        }
    }

}

?>