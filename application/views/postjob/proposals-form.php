<?php $this->load->view('template/homeheader', $page, $title); ?>

<div style="border: 1px solid rgb(204, 204, 204); margin-top: 60px; margin-left: 20px;    box-shadow: 0 0 0 1px #e0e0e0;background:#FFF;" class="col-sm-10">
    <div class="row">
        <br/>
        <div class="col-md-10 col-xs-12" style="-webkit-box-shadow: 0 0 0 2px #e0e0e0;
             box-shadow: 0 0 0 2px #e0e0e0;
             background-color: #fff;
             padding: 40px;">
            <h4 style="font-weight: bold; font-size: 21px; margin-bottom: 20px;" class="forum-ques-h4"><?php echo $details[0]->categoryname; ?></h4>
            <p style="color: rgb(2, 136, 200); font-size: 16px;font-weight:bold;" class="forum-ques-h4"><a style="color:#0276ae;" href="view_post_job/<?php echo base64_encryption($details[0]->id); ?>"><?php echo $details[0]->title; ?>.</a> </p>
            <h5 style="font-size: 15px; margin-top: 2%;">Category <font style="color:#0276AE;font-weight:bold"><?php echo $details[0]->categoryname; ?></font> 
                Fees: <font style="color:#0276AE;font-weight:bold">Rs <?php echo number_format($details[0]->fee, 2); ?></font>
                <img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png"> 
                Location: <font style="color:#0276AE;font-weight:bold"><?php echo $details[0]->cityname; ?></font></h5>
            <p style="font-weight: normal; font-size: 15px; line-height: 25px;" class="forum-ques-h4"><?php echo $details[0]->details; ?></p>                     
        </div>            

        <div class="col-md-10 col-xs-12" style="-webkit-box-shadow: 0 0 0 2px #e0e0e0;
             box-shadow: 0 0 0 2px #e0e0e0;
             background-color: #fff;
             padding: 40px;">

            <h4 style="font-weight: bold; font-size: 21px; margin-bottom: 20px;" class="forum-ques-h4"> Proposal Terms</h4>
            <h6 style="font-weight: bold; font-size: 18px; color:#000; margin-bottom: 20px;" class=""> You are submiting proposal as a Lawyer</h6>

        </div>            

        <div class="col-md-10 col-xs-12" style="-webkit-box-shadow: 0 0 0 2px #e0e0e0;
             box-shadow: 0 0 0 2px #e0e0e0;
             background-color: #fff;
             padding: 40px;">
            <h4 style="font-weight: bold; font-size: 21px; margin-bottom: 20px;" class="forum-ques-h4"> Bid</h4>

            <?= form_open_multipart('postjob', array('class' => 'frmsaveproposal form-control form-search', 'id' => "frmsaveproposal")); ?>
            <div class="row form-data">
                <div class="clearfix"></div>
                <center><div class="errorMessage"></div></center>
                <div class="clearfix"></div>

                <div class="form-group form-data-input">
                    <label class="control-label col-sm-3 col-xs-12" for="email">Amount :</label>
                    <div class="col-sm-8 col-xs-12">
                        <input type="text" class="form-control sel-opt number" name="amount" id="amount" placeholder="Enter bid amount" value="">
                    </div>
                </div>
                <div class="clearfix"></div>
                <input type="hidden" id="jobid" name="jobid" value="<?php echo $jobid; ?>"/>
                <div class="form-group form-data-input">
                    <label class="control-label col-sm-3 col-xs-12" for="email">Cover Letter:</label>
                    <div class="col-sm-8 col-xs-12">
                        <textarea id="coverLetter" name="coverLetter" class="form-control jqte-test" rows="8" up-prevent-stuffing="" required="required" ></textarea>
                    </div>
                </div>
                <div class="clearfix"></div> <br/>
                <div align="center" style="margin-top:20px;">
                    <div class="col-md-3"></div>
                    <div style="padding:0px;margin:0px;" class="col-md-6">
                        <input type="button" class="submit-button btn_save_proposal" value="Submit A Proposal">
                        <a class="submit-button" href="<?php echo base_url(); ?>find_job"><strong>Cancel</strong></a>
                    </div>
                    <div class="col-md-3"></div>

                </div>  
            </div>
            <?= form_close(); ?>
        </div>            

        <div class="clearfix"></div> <br/>
    </div>
    <!---****************End Post Question Container ****************---->
</div>

<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/jquery-te-1.4.0.css">
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery-te-1.4.0.min.js" charset="utf-8"></script>
<script>
    $('.jqte-test').jqte();

    // settings of status
    var jqteStatus = true;
    $(".status").click(function ()
    {
        jqteStatus = jqteStatus ? false : true;
        $('.jqte-test').jqte({"status": jqteStatus})
    });
</script>