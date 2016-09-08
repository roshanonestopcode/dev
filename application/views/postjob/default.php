<?php $this->load->view('template/homeheader', $page, $title); ?>
<!---Search Form-----> 
<!---<div class="container form-container-header">-->
<div class="container form-container-header-inner-cl">
    <div id='search-box'>
        <form action="<?php echo base_url(); ?>search_post_question" id="search-form" method="post" target="_top">
            <input id='search-text' name='serach' placeholder='Search' type='text' class="form-search-input"/>
            <button id='search-button' type='submit' class="search-button">                     
                <span>Search</span>
            </button>
        </form>

    </div>
</div>
<!---End Search Form----->

<div class="container-fluid fluid-box-forum2">
   <!--- <div class="container forum-main-container4">-->
        <!---****************Post Question Container ****************---->
        <div class="container forum-main-container2">
            <div class="load-view-post-job">
                <?php
                if (!empty($details)) {
                    foreach ($details as $key => $value) {
                        $last_loaded_id = $value->id;
                        ?>
                        <div class="row postmyjob">
                            <div class="col-md-2 col-xs-12">
                                <?php if (!empty($value->profile_image)) { ?>
                                    <img class="img-circle forum-dis-img" src="<?php echo $value->profile_image; ?>">
                                <?php } else { ?>
                                    <img class="img-circle forum-dis-img" src="<?php echo base_url() ?>assets/images/profile.png">
                                <?php } ?>
                            </div>
                            <!---Default Area---->

                            <div class="col-md-10 col-xs-12">
                                <h4 class="forum-ques-h4 h4-font">
                                    <?php echo $value->categoryname; ?>
                                </h4>

                                <p class="forum-ques-h4 p-font">
                                    <a style="color:#0276ae;" href="view_post_job/<?php echo base64_encryption($value->id); ?>"><?php echo $value->title; ?>.</a> 
                                </p>

                                <h5 class="h5-font">Category 
                                    <font style="color:#0276AE;font-weight:bold; margin-right: 30px;">
                                    <?php echo $value->categoryname; ?></font> 
                                    Fees: <font style="color:#0276AE;font-weight:bold; margin-right: 30px;">Rs <?php echo number_format($value->fee, 2); ?></font>

                                    <img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png"> 

                                    Location: <font style="color:#0276AE;font-weight:bold"><?php echo $value->cityname; ?></font>
                                </h5>

                                <p class="forum-ques-h4 p-font2">
                                    <?php echo validStrLen($value->details, 200); ?>
                                </p>                     
                            </div>
                            <!---End Default Area---->

                        </div>

                    <?php }
                    ?>
                    <!-- Displays more contents -->
                    <div id="more_tutorials_loaded"></div>
                    <!-- Holds the id of the last loaded content for the next contents to load -->
                    <input type="hidden" id="last_loaded_id" value="<?php echo $last_loaded_id; ?>" />
                    <!-- This is the load more contents button -->
                    <center>
                        <div id="vpb_more_button view_more_link" align="center" onclick="Load_More_Contents();">
                            <center>
                                <span id="more_contents_loading"  class="more_contents_loading" style="color:#0276ae;">
                                    <strong>See More</strong>
<!--                                    <img src="<?php echo base_url() ?>assets/images/arrow-down.gif" alt="View More" style="width:30px;height:30px; cursor: pointer;"/>-->
                                </span>
                            </center>
                        </div>
                    </center>
                <?php } else {
                    ?>
                    <div class="row postmyjoberr">
                        <div class="alert no-data-found"> 
                                No Record Found 
                            </div>
                    </div>


                <?php } ?>
            </div>
        </div>
        <!---****************End Post Question Container ****************---->
    <!---</div>--> <!-----End Main Center Container---->

</div>
<?php $this->load->view('template/footermain', $page, $title); ?>