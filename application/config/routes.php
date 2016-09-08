<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/*
  | -------------------------------------------------------------------------
  | URI ROUTING
  | -------------------------------------------------------------------------
  | This file lets you re-map URI requests to specific controller functions.
  |
  | Typically there is a one-to-one relationship between a URL string
  | and its corresponding controller class/method. The segments in a
  | URL normally follow this pattern:
  |
  |	example.com/class/method/id/
  |
  | In some instances, however, you may want to remap this relationship
  | so that a different class/function is called than the one
  | corresponding to the URL.
  |
  | Please see the user guide for complete details:
  |
  |	https://codeigniter.com/user_guide/general/routing.html
  |
  | -------------------------------------------------------------------------
  | RESERVED ROUTES
  | -------------------------------------------------------------------------
  |
  | There are three reserved routes:
  |
  |	$route['default_controller'] = 'welcome';
  |
  | This route indicates which controller class should be loaded if the
  | URI contains no data. In the above example, the "welcome" class
  | would be loaded.
  |
  |	$route['404_override'] = 'errors/page_missing';
  |
  | This route will tell the Router which controller/method to use if those
  | provided in the URL cannot be matched to a valid route.
  |
  |	$route['translate_uri_dashes'] = FALSE;
  |
  | This is not exactly a route, but allows you to automatically route
  | controller and method names that contain dashes. '-' isn't a valid
  | class or method name character, so it requires translation.
  | When you set this option to TRUE, it will replace ALL dashes in the
  | controller and method URI segments.
  |
  | Examples:	my-controller/index	-> my_controller/index
  |		my-controller/my-method	-> my_controller/my_method
 */
$route['default_controller'] = 'home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;



/* User Register & Login System */
$route['user_register/(:any)'] = 'login';
$route['save_register'] = 'login/save';
$route['user_login'] = 'login/accessLogin';
$route['user_logout'] = 'login/logout';
$route['genrate_opt'] = 'login/getOtp';
$route['user_login'] = 'login/customlogin';
$route['user_reset_password'] = 'login/resetpassword';
$route['lawyer_license'] = 'login/lawyerlicense';
$route['sign_up'] = 'login/signup';
$route['sign_in'] = 'login/signin';
$route['sign_in_client/(:any)'] = 'login/signinclient/$1';
$route['sign_in_as'] = 'login/signinas/$1';


//$route['change_Password/(:any)'] = 'login/changePassword/$1';
$route['user_update_password'] = 'login/updatepassword';
$route['upload_licence'] = 'login/uploadlicence';
$route['cunsult_register_success'] = 'login/cunsultsuccess';


/* User pofile details */
$route['lawyers_lists'] = 'lawyers';
$route['clients_lists'] = 'clients';
$route['user_profile'] = 'profile';
$route['edit_profile'] = 'profile/editprofile';



/* Clients */
$route['client_serach'] = 'clients/ajaxPaginationData';
$route['view_client/(:any)'] = 'clients/view/$1';
$route['save_rating'] = 'clients/rating';
$route['save_comments'] = 'clients/savecomment';
$route['client_exp_practice'] = 'clients/exppractice';
$route['save_practice_exp'] = 'clients/savepracticeexp';
$route['post_job'] = 'clients/clientdashboard';
$route['save_post_case'] = 'clients/savepostcase';
$route['post_case'] = 'clients/postcase';


/* Fourms */
$route['client_forum'] = 'forums';
$route['clients_forum_form'] = 'forums/form';
$route['question_save'] = 'forums/save';
$route['delete_question'] = 'forums/delete';
$route['update_question'] = 'forums/updateform';
$route['question_serach'] = 'forums/ajaxPaginationData';
$route['post_answer/(:any)'] = 'forums/postanswer/$1';
$route['add_answer'] = 'forums/saveanswer';
$route['delete_answer'] = 'forums/deleteanswer';
$route['answer_update'] = 'forums/updateanswer';
$route['my_question'] = 'forums/myquestion';
$route['post_legal_question/(:any)'] = 'forums/postlegalquestion/$1';

/* Post job*/
$route['find_job'] = 'postjob';
$route['load_more_job'] = 'postjob/loadmorejob';
$route['search_post_job'] = 'postjob/searchpostjob';
$route['view_post_job/(:any)'] = 'postjob/viewpostjob/$1';
$route['proposals/(:any)'] = 'postjob/proposals/$1';
$route['save_proposal'] = 'postjob/saveproposal';
$route['post_my_job'] = 'postjob/postmyjob';
$route['view_job_proposal/(:any)'] = 'postjob/viewjobproposal/$1';
$route['accept_job/(:any)'] = 'postjob/acceptjob/$1';
$route['post_accepted_job'] = 'postjob/postacceptedjob';
$route['my_job'] = 'postjob/myjob';
$route['edit_post_job'] = 'postjob/editpostjob';
$route['download_file/(:any)'] = 'postjob/downloadfile/$1';
$route['delete_post_job'] = 'postjob/deletepostjob';
$route['get_notifiy'] = 'postjob/getnotifiy';


/*Legal Q & A*/
$route['legal_qa'] = 'legalqa';
$route['legal_question/(:any)'] = 'legalqa/legalquestion/$1';
$route['question_answer/(:any)'] = 'legalqa/questionanswer/$1';
$route['search_qa_string'] = 'legalqa/searchqastring';
$route['search_post_question'] = 'legalqa/searchpostquestion';
$route['answer_list/(:any)'] = 'legalqa/answerlist/$1';

/* profile browse*/
$route['profile_browse/(:any)'] = 'browse/index/$1';
$route['profile_browse_serach'] = 'browse/ajaxPaginationData';
$route['profile_view/(:any)'] = 'browse/profileview/$1';
$route['profile_view/(:any)'] = 'browse/profileview/$1';
$route['find_lawyer'] = 'browse/index';


/* terms*/
$route['terms_and_conditions'] = 'terms/termconditons';
$route['privacy_policy'] = 'terms/privacypolicy';



/* Start Up / SME's*/
$route['start_up_sme'] = 'startupsme';
$route['privacy_policy'] = 'terms/privacypolicy';


/* Start Up / SME's*/
$route['wmc_legal_assistance'] = 'wmclegalassistance';
$route['send_msg_legal_assistance'] = 'wmclegalassistance/sendmsg';
