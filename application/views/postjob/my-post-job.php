<!---header----->
<?php
$this->load->view('template/homeheader', $page, $title);
$user = $this->session->userdata('user');
?>
<div class="container-fluid fluid-box-forum2">
    <div class="container forum-main-container5">
        <!---****************Post Question Container ****************---->
        <h1 class="content_header">Current Jobs</h1>
        <div class="container forum-main-container2">
            <div class="clearfix"></div>
            <?php echo $this->session->flashdata('customMessage'); ?>
            <div class="clearfix"></div>
            <?php
            if (!empty($details)) {
                foreach ($details as $key => $value) {
                    $last_loaded_id = $value->id;
                    $response = getproposalResponse($value->id);
                    ?>
                    <div  id="divid_<?php echo $value->id; ?>" class="row divid_<?php echo $value->id; ?> postmyjob">
                        <div class="col-md-2 col-xs-12">
                            <?php if (!empty($value->profile_image)) { ?>
                                <img class="img-circle forum-dis-img" src="<?php echo $value->profile_image; ?>">
                            <?php } else { ?>
                                <img class="img-circle forum-dis-img" src="<?php echo base_url() ?>assets/images/profile.png">
                            <?php } ?>
                        </div>

                        <!---Question Area---->
                        <div class="col-md-10 col-xs-12">
                            
                            <p style="float:right;margin-top:-13px;">
                                <a href="#" id="<?php echo $value->id; ?>" class="edit-post-job" style="color:#333;"> Edit / </a>&nbsp;
   <!---<a href="#" id="<?php echo $value->id; ?>" class="delete-post-job" onclick="return confirm('Are your sure to delete?')" >--->                             
                                <a href="#" class="delete-post-job" onclick="return confirm('Are your sure to delete?')" style="float:right;color:#333;" >Delete</a>
                            </p>

                            <h4 class="h4-font forum-ques-h4"><?php echo $value->categoryname; ?></h4>
                            <p class="p-font forum-ques-h4">
                                <?php if ($response != 0) { ?>
                                    <a style="color:#0276ae;" href="<?php echo base_url(); ?>view_job_proposal/<?php echo base64_encryption($value->id); ?>"><?php echo $value->title; ?>.
                                    <?php } else { ?>
                                        <a style="color:#0276ae;" href="#"><?php echo $value->title; ?>.
                                        <?php } ?>
                                    </a>
                            </p>

                            <h5 class="h5-font">Category <font style="color:#0276AE;font-weight:bold;margin-right:30px"><?php echo $value->categoryname; ?></font> 
                                Fees: <font style="color:#0276AE;font-weight:bold;margin-right:30px">Rs <?php echo number_format($value->fee, 2); ?></font>
                                <img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png"> 
                                Location: <font style="color:#0276AE;font-weight:bold"><?php echo $value->cityname; ?></font></h5>

                            <p class="p-font2 forum-ques-h4">
                               <span class="teaser"><?php echo validStrLen(strip_tags($value->details), 100); ?></span>
                            </p>   
                            <div class="col-md-5"></div>
                            <div class="col-md-6">
                                <div class="row">
                                    <p style="float:right;right:0;position:absolute;top:0px;">
                                        <font class="response-view">Response</font>
                                        <font style="color:#333;"><?php echo $response; ?> &nbsp;</font>
                                        <font class="response-view">view&nbsp;</font>
                                        <font style="color:#333;">
                                        <?php
                                        if (!empty($value->views)) {
                                            echo $value->views;
                                        } else {
                                            echo 0;
                                        }
                                        ?>&nbsp;</font>
                                    </p>
                                </div>
                            </div>

                          <!--  <div class="col-md-1" style="margin-top:6px;">
                                <a href="#" id="<?php echo $value->id; ?>" class="delete-post-job" onclick="return confirm('Are your sure to delete?')" >
                                    <span class="glyphicon glyphicon-remove cancel-gly"aria-hidden="true"></span>
                                </a>
                            </div>-->
                            <div class="clearfix"></div><br/>
                        </div>                            
                    </div>

                    <?php
                }
            } else {
                ?>
                <div class="row postmyjoberr">
                    <!--<div class="alert alert-danger">-->
                    
                    <div class="alert no-data-found"> 
                                No Record Found 
                            </div>
                    
                    <!--<div class="alert">
                        <strong>Sorry,</strong> data could not be passed at the moment. Please try again or contact this website admin to report this error message if the problem persist. Thanks...
                    </div>-->
                </div>
            <?php } ?>

        </div>
        <!---****************End Post Question Container ****************---->
    </div> <!-----End Main Center Container---->

</div>

<div style="" role="dialog" id="modal-edit-post-case"class="modal fade"> 
    <div class="modal-dialog model-dailogue-width">
        <div class="modal-content">
            <?= form_open_multipart('postjob/updatepostcase', array('class' => 'frmeditpostcase', 'id' => "frmeditpostcase")); ?>
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                 <h4 align="center" style="font-size:22px; font-weight:bold;color:#0288C8;" class="modal-title">Update  Case</h4>
            </div>
            <div class="modal-body">

            </div>
            
            <div class="modal-footer">
                 <button  class="btn btn-success" type="submit" id="btn-update-job">   <i class="glyphicon glyphicon-ok"></i>&nbsp;Update</button>
                <button type="button" class="btn btn-danger btn-close" data-dismiss="modal">
                    <i class="glyphicon glyphicon-remove-sign"></i>&nbsp;Close</button>
            </div>
            <?= form_close(); ?>
            <!--  </div>-->
        </div>
    </div>
</div>
<!---Model Test --->
<?php $this->load->view('template/footermain', $page, $title); ?>
<!--End Model Test ---->
<!-- Modal -->

<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/jquery-te-1.4.0.css">
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery-te-1.4.0.min.js" charset="utf-8"></script>


<!---Model Style----->

