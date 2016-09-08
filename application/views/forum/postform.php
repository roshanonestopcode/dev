<!---header----->
<?php
$this->load->view('template/homeheader', $page, $title);
$user = $this->session->userdata('user');
?>
<div class="clearfix"></div>
<div class="container-fluid fluid-box-forum2" >
    <div class="container forum-main-container2">
        <div class="row">
            <div class="col-sm-12" >
                <div class="tab-content" style="margin:0px;padding:0px;">
                    <!----Active Basic info 1---->    
                    <div role="tabpanel" class="tab-pane fade in active" id="vtab1">
                        <div class="row form-data" >
                            <div class="col-md-12 col-xs-12" style="margin:0px;padding:0px; border:1px solid #ccc;margin-top:50px">
                                <!--Row Question--->
                                <div class="row">
                                    <div class="col-md-12 col-xs-12 forum-ques-2 ">
                                        <!--<div class="fix-Question">-->
                                        <div class="" style="padding:20px 10px;">
                                            <?php if (!empty($forumquestion[0]->profile_image)) { ?>
                                                <img class="img-circle img-responsive forum-dis-img" src="<?php echo $forumquestion[0]->profile_image; ?>">
                                            <?php } else { ?>
                                                <img class="img-circle img-responsive forum-dis-img" src="<?php echo base_url(); ?>assets/images/demo.png">
                                            <?php } ?>
                                            <h4 class="forum-h4-2"><?php echo $forumquestion[0]->question; ?></h4><br>
                                            <div class="row">
                                                <div class="col-md-10" style="padding:0px;margin:0px;">
                                                    <h5 class="h5-2">Asked by <font style="color:#0276AE">
                                                        <?php
                                                        if ($forumquestion[0]->anonymous == 2) {
                                                            echo 'Anonymous';
                                                        } else {
                                                            echo $forumquestion[0]->name;
                                                        }
                                                        ?>

                                                        </font> 
                                                        on <?php echo date('d/m/Y', strtotime($forumquestion[0]->created_on)); ?>, <?php echo date('H:i', strtotime($forumquestion[0]->created_on)); ?>
                                                        <img src="<?php echo base_url(); ?>assets/images/location-icon.png" alt="location icon" /> 
                                                        City: <font style="color:#0276AE"><?php echo $forumquestion[0]->cityname; ?></font></h5>
                                                </div>   
                                            </div>
                                            <div class="row">
                                                <?php
                                                if ($user['type'] != 'lawyer') {
                                                    ?>
                                                    <div class="col-md-6" style="padding:0px;margin:0px;">
                                                        <p style="float:left;padding-left:20%;position:relative;top:0px;">
                                                            <font class="response-view-2">
                                                            <span class="glyphicon glyphicon-step-backward" aria-hidden="true"></span>
                                                            <a  style="color:#0288c8;" href="<?php base_url(); ?>client_forum">Back</a></font>
                                                        </p>
                                                    </div> 
                                                <?php } else { ?>
                                                    <div class="col-md-6" style="padding:0px;margin:0px;"></div>
                                                <?php } ?>
                                                <div class="col-md-6" style="padding:0px;margin:0px;">
                                                    <p style="float:right;right:0;position:relative;top:0px;">
                                                        <font class="response-view-2">Response</font>
                                                        <font style="color:#333;"><?php echo getResponse($forumquestion[0]->id); ?> &nbsp;</font>
                                                        <font class="response-view-2">view&nbsp;</font>
                                                        <font style="color:#333;"><?php
                                                        if (!empty($forumquestion[0]->views)) {
                                                            echo $forumquestion[0]->views;
                                                        } else {
                                                            echo 0;
                                                        }
                                                        ?>
                                                        &nbsp;</font>
                                                    </p>
                                                </div>     
                                            </div>
                                            <hr style="color:#333;" />
                                        </div>
                                        <!----Reverts Start----->
                                        <?php
                                        if (!empty($answer)) {
                                            foreach ($answer as $key => $value) {
                                                ?>
<div class="row revert-start" style="margin-top:0%;" id="revert_<?php echo $value->message_id; ?>">
    <div class="col-md-10" style="float: right;">
        <div class="row">
         
            <!--<div class="col-md-2 revert-img">-->
              <div class="col-md-2 col-xs-12">
                <?php if (!empty($value->profile_image)) { ?>
                    <img class="img-circle img-responsive forum-dis-img" src="<?php echo $value->profile_image; ?>">
                <?php } else { ?>
                    <img class="img-circle img-responsive forum-dis-img" src="<?php echo base_url(); ?>assets/images/demo.png">
                <?php } ?>
            </div>
            <div class="col-md-8 col-xs-12">
                <p>
                    <span class="span_message_<?php echo $value->message_id; ?>">
                        <?php
                        echo $value->message
                        ?>
                    </span>   
                </p>      
                <textarea type="text"  style="display:none;" cols="30" class="form-control text_answer_<?php echo $value->message_id; ?>"/><?php echo $value->message ?></textarea>
            </div>
        </div>
        <!----Response / Edit / Delete / View ------>
        <div class="row forum-bottom-line-2-sm">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-9">
                        <div class="row" style="margin:0px;padding:0px;">
                            <div class="col-md-12" style="margin:0px;padding:0px;">
                                <h5 class="h5-2"> Answered on <font style="color:#0276AE"> <?php
                                    echo $value->name 
                                    ?></font> on <?php echo date('d/m/Y', strtotime($value->created_at)); ?>, <?php echo date('H:i', strtotime($value->created_at)); ?></h5>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <!----Response / Edit / Delete / View ------> 
        
        <!----Response / Edit / Delete / View ------>
        <?php
        if ($user['type'] != 'client') {
            ?>
<div class="row forum-bottom-line-2">
<div class="col-md-12">
<div class="row">
<div class="col-md-12">
<div class="row">
<div class="col-md-12">
<p style="float:right;right:0;position:absolute;top:0px;">
<a href="#" id="<?php echo $value->message_id; ?>" class="edit edit-answer edit_answer_<?php echo $value->message_id; ?>" style="color:#333 !important;">
  <!--  <font class="response-view-2">
    <img src="<?php echo base_url(); ?>assets/images/edit-icon.png" />
    </font>-->
    Edit
</a>


<a href="#" id="<?php echo $value->message_id; ?>" class="update edit-answer update_answer_<?php echo $value->message_id; ?>" style="display:none;color:#333 !important;">
<!--<font class="response-view-2">
<img src="<?php echo base_url(); ?>assets/images/edit-icon.png" />
</font>-->
Update 
&nbsp;

</a> 
    <a style="color:#333;">/</a>
<a href="#" id="<?php echo $value->message_id; ?>" class="delete-answer"  style="color:#333 !important;">
<!---<font class="response-view-2">
<img src="<?php echo base_url(); ?>assets/images/delete-icon.png" />&nbsp;
</font>-->
Delete
</a> &nbsp;

</p>
</div>
</div>
</div>
</div>
</div>
</div>
        <?php } ?>
        <!----Response / Edit / Delete / View ------>  
    </div>
</div>
                                        <div style="border-bottom:1px solid #ccc;"></div>
                                                <?php
                                            }
                                        } else {
                                            ?>
                                            <div class="row" style="font-size:14px; font-weight:bold; padding: 20px 20px 20px 10%;color:#494949; text-align:center;">
                                                Be a First to Revert 
                                            </div>
                                        <?php } ?>
                                        <!----Reverts End 1----->
                                        <!---------------------Forum Comments Section----------------------------------------------------------->  
                                        <?php
                                        if ($user['type'] != 'client') {
                                            ?>
                 <div class="row" style="margin-top:4%;">
                  <!---  <div class="row fix-search" style="margin-top:4%;">-->
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-2"></div>
                                <div class="col-md-2 revert-img">
                                    <?php /*?> <img src="<?php echo base_url(); ?>assets/images/dp.jpg" class="img-circle img-responsive"/><?php */?>
                                </div>
                                <div class="col-md-8">
                                    <?php echo $this->session->flashdata('actionMessage'); ?><div class="clearfix"></div><br/>
                                    <div class="row" style="margin-top:1%; margin-bottom:4%;">
                                        <div class="col-md-12 col-xs-12 search-form-center" align="center">

                                            <?= form_open_multipart('add_answer', array('class' => 'form-control form-search', 'id' => "answer-add")); ?>
                                            <input type="hidden" id="from_user_id" name="from_user_id" value="<?php echo $user['userId']; ?>"/>
                                            <input type="hidden" id="to_user_id" name="to_user_id" value="<?php echo $forumquestion[0]->u_id; ?>"/>
                                            <input type="hidden" id="question_id" name="question_id" value="<?php echo $forumquestion[0]->id; ?>"/>
                                            <div class="col-md-12 col-xs-12"> 
            <textarea rows="1"  cols="10" class="form-revert-input form-control" name="answer" placeholder="Revert here..."  validate/></textarea>
                                               
                                            </div>
                                              <div class="col-md-12 col-xs-12"> 
                                             <input type="submit" class="revert-btn" value="Revert" placeholder="Revert"/>
                                           </div>
                                            <?php echo form_close(); ?>
                                        </div>
                                    </div>
                                </div>
                            </div>                               
                        </div>
                    </div>	      
                                        <?php } ?>
                                        <!---------------------Forum Comments Section----------------------------------------------------------->        


                                    </div>
                                </div>

                                <!--End Row Question--->

                            </div>  
                        </div>
                    </div>
                    <!----Active Basic info---->   

                    <div style="margin-bottom:10px;"></div>	
                             
                </div>
              
            </div>
               
        </div>
        
    </div>
      
</div>

<?php  ?><div style="">
<?php $this->load->view('template/footermain', $page, $title); ?>
</div><?php  ?>
    <?php
if ($_SESSION['practice'] == 1) {
    echo '<script type="text/javascript" src="' . site_url() . 'assets/js/bootstrap-modal.js"></script>';
    echo '<script type="text/javascript" src="' . site_url() . 'assets/js/bootstrap-modalmanager.js"></script>';
      echo '<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />';
    echo '<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>';
}
?>