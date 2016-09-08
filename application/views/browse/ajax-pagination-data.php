<div class = "post-list" id = "postList"> 
    <?php
    if (!empty($browseprofile)) {
        foreach ($browseprofile as $key => $value) {
            ?>
            <div class="row container-search-lawyer">
                <a href="<?php echo base_url()?>profile_view/<?php echo base64_encryption($value->id); ?>" style="cursor:pointer; color:#333;">
                    <div class="col-md-2 col-xs-12 col-sm-2">
                        <img class="img-circle img-responsive c_image" src="<?php echo base_url() ?>assets/images/profile.png">
                    </div>
                    <div class="col-md-10 col-xs-12 col-sm-10">
                        <div class="row p-detail1">
                            <div class="col-md-6">
                                <h2 class="c-name"><?php echo $value->name; ?></h2>
                            </div>
                            <div class="col-md-6 rate-right ">
                                <div class="row">
                                    <div class="c_response">
                                        <p> 
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
                                        </p>
                                    </div>
                                    <div style="margin-bottom:22px;"></div>
                                </div>
                            </div>    
                        </div>
                        <h5 class="h5-font">
                            <img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png"> 
                            Location: <font style="color:#0276AE;font-weight:bold"><?php echo $value->cityname; ?></font>
                            Exp: <font style="color:#0276AE;font-weight:bold"><?php echo $value->experience; ?></font> 
                        </h5>
                        <div class="row">
                            <div class="col-md-12">
                                <p class="lawyer-desc">
                                    <?php echo $value->description; ?>
                                    <a class="readmore-lyw" style="color: #0088ba;" href="#">Read More</a>'
                                </p>
                            </div>
                        </div>
                        <div class="row lawyer-cat-area">
                            <div class="col-md-12">
                                <?php
                                $selectedCat = selectedClientcategoryId($value->id);
                                foreach ($selectedCat as $key => $cat) {
                                    echo '<span class="span-cateogry">' . selectedClientcategory($cat->cateId) . '</span>';
                                }
                                ?>
                            </div>
                        </div> 
                    </div>
                </a>  
            </div>
            <div class="clearfix"></div>
            <?php
        }
    } else {
        ?>
        <div class="row small-fluid-box1">
            <div class="alert alert-danger">
                <strong>Danger!</strong> Indicates a dangerous or potentially negative action.
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