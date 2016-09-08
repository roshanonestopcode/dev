<?php
$this->load->view('template/homeheader', $page, $title);
$checkproposal = checkProposalexist(base64_decryption($jobid));
?>

<div class="row view-job-row">
    
    <div class="col-sm-9 view-job-desc">
        <div class="row">
            <h4 class="forum-ques-h4 view-job-desc-question">
                Details
            </h4>
            <div class="col-md-10 col-xs-12">
                <h4 class="forum-ques-h4 view-job-desc-category">
                    <?php echo $details[0]->categoryname; ?>
                </h4>
                
                <p style="" class="forum-ques-h4 view-job-desc-category-p">
                    <a style="color:#0276ae;" href="view_post_job/<?php echo base64_encryption($details[0]->id); ?>">
                        <?php echo $details[0]->title; ?>.</a> 
                </p>
                <h5 style="font-size: 15px; margin-top: 2%;">
                 
                    Category
                    <font style="color:#0276AE;font-weight:bold">
                        <?php echo $details[0]->categoryname; ?>
                    </font>
                    
                    Fees: 
                    <font style="color:#0276AE;font-weight:bold">
                    Rs <?php echo number_format($details[0]->fee, 2); ?>
                    </font>
                    
                    <img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png">
                    
                    Location: 
                    <font style="color:#0276AE;font-weight:bold">
                        <?php echo $details[0]->cityname; ?>
                    </font>
                </h5>
                <p style="font-weight: normal; font-size: 15px; line-height: 25px;" class="forum-ques-h4">
                    <?php echo strip_tags($details[0]->details); ?>
                </p>                     
                <?php if(!empty($details[0]->file)){ ?>
                <p style="color: rgb(2, 136, 200); font-size: 16px;font-weight:bold;" class="forum-ques-h4">
                    Attachment: 
                    <a href="<?php echo base_url(); ?>download_file/<?php echo $jobid; ?>">
                        <strong>
                            <span  style="color:#d9534f;font-size:20px;" class="glyphicon glyphicon-download-alt" aria-hidden="true"></span>
                        </strong></a> 
                </p>
                <?php } ?>    
            </div>            
        </div>
        <!---****************End Post Question Container ****************---->
    </div>

    <div class="col-sm-2 view-job-sidebar">
        <h2>
            <?php if ($checkproposal == 2) { ?>
                <a href="<?php echo base_url(); ?>proposals/<?php echo $jobid; ?>"  class="btn btn-post">Submit a Proposal</a>
            <?php } else { ?>
                <a href="#"  class="btn btn-post">Submitted  Proposal</a><div class="clearfix"></div><br/>
                <a href="<?php echo base_url(); ?>find_job"  class="btn btn-post">Cancel</a>
            <?php } ?>
        </h2>
    </div>
</div>
<div class="footermain-common" >
<?php $this->load->view('template/footermain', $page, $title); ?>
</div>

<style>
    .footermain-common{
        bottom:0;
        postion:fixed;
        left:0;
        right:0;
        margin-top: 3%;
    }
    
</style>