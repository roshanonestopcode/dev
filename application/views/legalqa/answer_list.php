<?php
$this->load->view('template/homeheader', $page, $title);
?>
<style>

</style>
<div class="clearfix"></div>

<!-----Main Center Container---->
<div class="container-fluid" style="min-height:410px;margin-top:6%">
    <div class="col-md-12 gqa_search_main">           
        <div class="row gqa_search_row">
            <h1 class="gqa_foregin_trip_head">Filter Question/Answers with Reviews</h1>
            <h2 class="gqa_search_header"><?php echo $answerreview[0]->categoryname; ?></h2>  	
            <div class="row"> 
                <div class="al-review">
                <a class="gqa_search_header_ques"><?php
                    if (!empty($answerreview[0]->question)) {
                        echo $answerreview[0]->question;
                    }
                    ?>
                </a>
                <font style="font-size:12px;font-weight:normal "><?php
                    if (!empty($answerreview[0]->qdate)) {
                        echo date('d/m/Y', strtotime($answerreview[0]->qdate));
                    }
                    ?>
                </font>‎
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12" style="border:1px solid #ccc;">
                    <!--------Check Question Answer portion----->


                    <?php
                    if (!empty($answerreview)) {
                        foreach ($answerreview as $key => $value) {
                            ?>
                            <div class = "post-list" id = "postList"> 
                                <div class="row filter_qa_review">
                                    <!--Profile Image---->
                                    <div class="col-md-2 col-xs-12 col-sm-2">
                                        <?php if (!empty($value->profile_image)) { ?>
                                            <img class="img-circle qa_c_image" src="<?php echo $value->profile_image; ?>">
                                        <?php } else { ?>
                                            <img class="img-circle qa_c_image" src="<?php echo base_url() ?>assets/images/profile.png">
                                        <?php } ?>
                                    </div>
                                    <!--End Profile Image---->

                                    <div class="col-md-10 col-xs-12 col-sm-10">
                                        <div class="row p-detail1">
                                            <!----Person Name---->
                                            <div class="col-md-6">
                                                <h2 class="c-name"><?php echo $value->name; ?></h2>
                                            </div>
                                            <!----Person Response---->
                                            <div class="col-md-6 rate-right ">
                                            </div>
                                            <!----End Person Response---->
                                        </div>
                                        <!----Person Deatls in line----> 
                                        <h5 class="h5-font">
                                            <img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png"> 
                                            Location: <font style="color:#0276AE;font-weight:bold"><?php echo $value->cityname; ?></font>

                                             <font style="color:#000;font-weight:bold"><?php echo date('d/m/Y', strtotime($answerreview[0]->created_at)); ?></font> 

                                        </h5>
                                        <!----Person Deatls in line----> 
                                        <!----Person Descriptions----> 
                                        <div class="gqa_search_view">
                                            <a href="#" class="g_view_a"> 
                                                <?php echo $value->message; ?>

                                            </a>
                                        <?php /*?>    <h5 class="h5-font">
                                                <?php echo date('d/m/Y', strtotime($answerreview[0]->created_at)); ?>
                                            </h5><?php */?>
                                        </div>
                                        <!----End Person Descriptions----> 

                                    </div>

                                </div>
                                <div class="hr-sepration"></div>
                            </div>
                            <?php
                        }
                    } else {
                        ?>
                        <div class="" style="margin-top:18px;padding-bottom:18px;padding-left:5px;">
                                <a style="color:#cc0000; font-size: 14px;">
                                <div class="alert no-data-found">
                                                    No Records found.
                                </div>
                        </div>
                    <?php } ?>

                 
                    <!--------End Question Answer Portion------->            
                </div>
                   <center>
                       
                       <a href="javascript:history.back();" class="btn backbtn">
                          
                             <span class="glyphicon glyphicon-chevron-left"></span> Back
                        </a>
                    </center>
            </div>
        </div>
    </div>
</div>
<div class="footer-main-signup" >
<?php $this->load->view('template/footermain', $page, $title); ?>
</div>
<!-----End Main Center Container---->       