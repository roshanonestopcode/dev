<?php
$this->load->view('template/homeheader', $page, $title);
$search = $_GET['profile_search'];
?>
<div class="container-fluid fluid-box">
    <div class="container small-fluid-box">
        <div style="margin-top:20px;"></div>
        <div class="search-lawyer-list" id="search-lawyer-list"> 
            <div class="clearfix"></div><br/>

            <!---Search Form-----> 
            <div style="" class="container-search-lawyer-header">
                <div class="row">           
                    <div id='search-box'>
                        <form action="#" id="profile-search-form" method="post" target="_top">
                            <input id='search-text' value="<?php echo $match; ?>" name='serach' placeholder='Search' type='text' class="form-search-input input-profile-serach"/>
                            <button id='search-button' type='button' class="search-button profile-browse-search-button">                     
                                <span>Search</span>
                            </button>
                        </form>
                    </div>
                </div>
                <!---End Search Form----->
                <!-----Dropdown Menu Select area------->
                <form action="#" id="drop-profile-search-form" method="post" target="_top">
                    <div class="row" style="margin-top: 50px;">
                        <div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-12" style="margin-bottom:10px;padding-left:0px">
                                <div class="select-style">
                                    <select name="category" id="category">
                                        <option value="">--Select Experience--</option>
                                        <?php
                                        foreach ($category as $key => $cat) {
                                            if ($cat->categoryname == $search) {
                                                $sel = 'selected="selected"';
                                            } else {
                                                $sel = '';
                                            }
                                            echo ' <option ' . $sel . ' value="' . $cat->categoryname . '">' . $cat->categoryname . '</option>';
                                        }
                                        ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-12" style="margin-bottom:10px;padding-left:0px">
                                <div class="select-style">
                                    <select name="experience" id="experience">
                                        <option value="">--Select Experience--</option>
                                        <?php
                                        foreach ($experience as $key => $xexp) {

                                            echo '<option  value="' . $xexp->exp . '">' . $xexp->exp . '</option>';
                                        }
                                        ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <!-----End Dropdown Menu Select Area--->
            <!-- Lawyer Search Profile row----------------------------->   

            <div class = "post-list" id = "postList"> 
                <?php
           
                if (!empty($browseprofile)) {
                    foreach ($browseprofile as $key => $value) {
                        if(!empty($value->id))
                        ?>
                        <a href="<?php echo base_url(); ?>profile_view/<?php echo base64_encryption($value->id); ?>" style="cursor:pointer; color:#333;">
                                      <div class="col-md-12">
                            <div class="row container-search-lawyer">
                                <div class="col-md-2 col-xs-12 col-sm-2">
                                    <?php if (!empty($value->profile_image)) { ?>
                                        <img class="img-circle img-responsive c_image" src="<?php echo $value->profile_image; ?>">
                                    <?php } else { ?>
                                        <img class="img-circle img-responsive c_image" src="<?php echo base_url() ?>assets/images/profile.png">
                                    <?php } ?>
                                </div>
                                <div class="col-md-10 col-xs-12 col-sm-10">
                                    <div class="row p-detail1">
                                        <div class="col-md-6">
                                            <h2 class="c-name"><?php echo $value->name; ?></h2>
                                        </div>
                                        <div class="col-md-6 rate-right ">
                                            <div class="row">
                                                <div class="c_response">

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
                                                <div style="margin-bottom:22px;"></div>
                                            </div>
                                        </div>    
                                    </div>
                                    <h5 class="h5-font">
                                        <img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png"> 
                                        Location: <font style="color:#0276AE;font-weight:bold; margin-right:30px;"><?php echo $value->cityname; ?></font>
                                        Exp: <font style="color:#0276AE;font-weight:bold"><?php echo $value->experience; ?></font> 
                                    </h5>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="comment more">
                                                <?php echo $value->description; ?>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row lawyer-cat-area">
                                        <div class="col-md-12">
                                            <?php
                                            $selectedCat = selectedClientcategoryId($value->id);
                                            foreach ($selectedCat as $key => $cat) {
                                                if (!empty($cat->cateId))
                                                    echo '<span class="span-cateogry">' . selectedClientcategory($cat->cateId) . '</span>';
                                            }
                                            ?>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                                      </div>
                        </a>  
                        <div class="clearfix"></div>
                        <?php
                    }
                } else {
                    ?>
                    <div class="row small-fluid-box1">
                        <div class="alert no-data-found">
                            No Records found.
                        </div>
                    </div>
                <?php } ?>
                <div class="clearfix"></div><br/>
                <div class="row"> 
                    <div class="col-md-12" style="color:#07a3f0">
                        <?php echo $this->ajax_pagination->create_links(); ?> 
                    </div>
                </div>  
            </div>



            <!-- End Lawyer Search Profile row----------------------------->   
            <!-- End Search Profile ----------------------------->
        </div>
        <!----Lawyers with Exp.---->
    </div>

</div>


<!------End Test Search Lawyer----->


<div style="margin-bottom: 0px !important; padding-top:20px; ">
    <?php $this->load->view('template/footermain', $page, $title); ?>

</div>
