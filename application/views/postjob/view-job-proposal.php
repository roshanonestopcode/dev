<?php
$this->load->view('template/homeheader', $page, $title);
?>
<div class="container-fluid fluid-box-forum2">
   <div class="container forum-main-container4">
<!--<div class="container-fluid fluid-box">
    <div class="container small-fluid-box">-->
    <h1 class="content_header">View Jobs</h1>  
        <div id="postList" class="post-list"> 
            <div class="clearfix"></div>
            <?php echo $this->session->flashdata('actionMessage'); ?>
            <div class="clearfix"></div>
            <?php
            if (!empty($clients)) {
                foreach ($clients as $key => $value) {
                    $acceptedjob = checkacceptedjob($value->proposaljobid);
                    ?>
                    <div class="row small-fluid-box1 list-item">
                        <!--Profile Image---->
                        <div class="col-md-2 col-xs-12 col-sm-2">
                            <?php if (!empty($value->profile_image)) { ?>
                                <img class="img-circle img-responsive c_image" src="<?php echo $value->profile_image; ?>">
                            <?php } else { ?>
                                <img class="img-circle img-responsive c_image" src="<?php echo base_url() ?>assets/images/profile.png">
                            <?php } ?>
                        </div>
                        <!--End Profile Image---->
                        <div class="col-md-10 col-xs-12 col-sm-10">
                            <div class="row p-detail1">

                                <!----Person Name---->
                                <div class="col-md-6">
                                    <h2 class="c-name"><a class="c-name" href="<?php echo base_url(); ?>view_client/<?php echo base64_encryption($value->proposaluserid); ?>"><?php echo $value->name; ?></a></h2>
                                </div>

                                <!----Person Response---->
                                <div class="col-md-6 rate-right ">
                                    <div class="row">
                                        <div class="rating">
                                            <?php
                                            $rating = getclientRating($value->id);
                                            if (!empty($rating)) {
                                                $rating1 = 5 - $rating;
                                                for ($i = 1; $i <= $rating1; $i++) {
                                                    echo '<img src="' . base_url() . '/assets/images/star2.png" />';
                                                }
                                                for ($i = 1; $i <= $rating; $i++) {
                                                    echo '<img src="' . base_url() . '/assets/images/star1.png" />';
                                                }
                                            } else {
                                                for ($i = 1; $i <= 5; $i++) {
                                                    echo '<img src="' . base_url() . '/assets/images/star2.png" />';
                                                }
                                            }
                                            ?>

                                        </div>

                                        <div style="position:absolute; right:12px;">
                                            200 Raiting
                                        </div>
                                    </div>
                                </div>
                                <!----End Person Response---->

                            </div>
						
                            <!----Person Deatls in line----> 
                            <div class="row p-detail2">
                            
                            <!----View ---->
                            <h5 class="h5-font">
                            	<img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png"> 
                                Location: <font style="color:#0276AE;font-weight:bold; margin-right:30px;"><?php echo $value->cityname; ?></font>
                                Exp: <font style="color:#0276AE;font-weight:bold; margin-right:30px;"><?php echo $value->experience; ?></font> 
                            </h5>
                            <!---View --->      
                      
                            <!----Person Deatls in line----> 
                            <!----Person Descriptions----> 
                            <div class="row">
                                <div class="col-md-12">
                                    <span class="teaser"><?php echo validStrLen($value->coverletter, 100); ?></span>
                                    <span class="complete"><?php echo $value->coverletter; ?></span>
                                    <span class="tmore">more...</span>
                                </div>
                            </div>
                            <!----End Person Descriptions----> 
                            <div class="clearfix"></div><br/>

                            <!----Lawyer Selcted Categories----> 
                            <div class="row">
                                <div class="col-md-9">
                                    <?php
                                    $selectedCat = selectedClientcategoryId($value->proposaluserid);
                                    foreach ($selectedCat as $key => $cat) {
                                        echo '<a class="selected-cat" >' . selectedClientcategory($cat->cateId) . '</a>';
                                    }
                                    ?>
                                </div>
                                <div class="col-md-2">
                       
                                    <p class="fee-amount cmn-t-underline"> 
                                    &#x20A8;.<?php echo number_format($value->proposalamt, 2); ?>
                                    	
                                    </p>
                                </div>
                                <?php if ($acceptedjob != '1') { ?>
                                    <div class="col-md-1">
                                        <a class="btn-accept" href="<?php echo base_url(); ?>accept_job/<?php echo base64_encryption($value->pid); ?>" onclick="return confirm('Are your sure?')">
                                            Accept
                                        </a>
                                    </div>
                                <?php } ?>

                            </div>
                            <!----End Lawyer Selcted Categories---->  

                        </div>

                    </div>
                    <?php
                }
            }
            ?>
        </div>
    </div>
</div>