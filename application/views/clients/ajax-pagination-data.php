<div class="post-list" id="postList">
    <div class="row"> 
        <div class="col-md-12 col-xs-12">
            <?php echo $this->ajax_pagination->create_links(); ?> 
        </div>
    </div>
    <div class="clearfix"></div><br/>
    <?php
    if (!empty($clients)) {
        foreach ($clients as $key => $value) {
            ?>
            <div class="row small-fluid-box1 list-item">

                <div class="col-md-2 col-xs-12 col-sm-2">
                    <?php if (!empty($value->profile_image)) { ?>
                        <img class="img-circle img-responsive c_image" src="<?php echo $value->profile_image; ?>">
                    <?php } else { ?>
                        <img  class="img-circle img-responsive c_image" src="<?php echo base_url() ?>assets/images/profile.png">
                    <?php } ?>
                </div>
                <div class="col-md-10 col-xs-12 col-sm-10">
                    <div class="row p-detail1">
                        <!----Person Name---->
                        <div class="col-md-6">
                            <h2  class="c-name"><?php echo $value->name; ?></h2>
                        </div>
                        <!----Person Response---->
                        <div class="col-md-6 rate-right ">
                            <div class="row">
                                <div class="c_response">65 Responses</div>
                               
                               		<div style="margin-bottom:22px;"></div>
                               
                                <div class="rating"  style="margin-top:2%;">
                                   <p> <?php
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
                                    ?></p>
                                    <p>200 Raiting</p>
                                </div>
                               <!-- <div style="position:absolute; right:12px;">200 Raiting</div>-->
                            </div>
                        </div>
                        <!----End Person Response---->
                    </div>

                    <!----Person Deatls in line----> 
                   <?php /*?> <div class="row p-detail2">      
                        <div class="col-md-1 col-xs-1">
                            <img class="img-responsive" style="width:20px;" src="<?php echo base_url(); ?>assets/images/location.png">
                        </div>

                        <div class="col-md-11 col-xs-11 profile-detail">                
                            City : <?php echo $value->cityname; ?>, 
                            Gender : <?php echo $value->gender; ?>, Exp:<?php echo $value->experience; ?> 
                        </div>          
                    </div><?php */?>
                    
                        <h5 class="h5-font">
                             	<img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png"> 
                                Location: <font style="color:#0276AE;font-weight:bold; margin-right:30px;"><?php echo $value->cityname; ?></font>
                                
                             	Gender: <font style="color:#0276AE;font-weight:bold; margin-right:30px;"><?php echo $value->gender; ?></font> 
                                
                                Exp: <font style="color:#0276AE;font-weight:bold"><?php echo $value->experience; ?></font> 
                                </h5>
                    
                    <!----Person Deatls in line----> 


                    <!----Person Descriptions----> 
                    <div class="row">
                        <div class="col-md-12">
                            <p class="lawyer-desc">
                                <?php
                                $string = strip_tags($value->description);

                                if (strlen($string) > 200) {

                                    // truncate string
                                    $stringCut = substr($string, 0, 200);

                                    // make sure it ends in a word so assassinate doesn't become ass...
                                    $string = substr($stringCut, 0, strrpos($stringCut, ' ')) . '... <a style="color: #0088ba;" href="view_client/' . base64_encryption($value->id) . '">Read More</a>';
                                }
                                echo $string;
                                ?>
                            </p>
                        </div>
                    </div>
                    <!----End Person Descriptions----> 


                    <!----Lawyer Selcted Categories----> 
                    <div class="row lawyer-cat-area">
                        <div class="col-md-12">
                            <?php
                            $selectedCat = selectedClientcategoryId($value->id);
                            foreach ($selectedCat as $key => $cat) {
                                echo '<a href="#">' . selectedClientcategory($cat->cateId) . '</a>';
                            }
                            ?>

                        </div>
                    </div>
                    <!----End Lawyer Selcted Categories---->  

                </div>

            </div>

            <?php
        }
    } else {
        ?>
        <div class="row small-fluid-box1">
            <div class="alert no-data-found"> 
                                No Record Found 
                            </div>
        </div>
    <?php } ?>
    <div class="clearfix"></div><br/>
    <div class="row"> 
        <div class="col-md-12">
            <?php echo $this->ajax_pagination->create_links(); ?> 
        </div>
    </div>  
</div>