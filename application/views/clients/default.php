<style>
    .select-style{
        border: 1px solid #ccc;min-width: 160px;border-radius: 3px;
                  overflow: hidden;
                  background: #edeef3 url("<?php echo base_url() ?>assets/images/drop-icon.png") no-repeat 90% 50%;
                  color:#0088ba;
                  margin:0 auto;
                  font-size:20px;
                  border-top:1px solid #999;
                  border-left:1px solid #999;
    }
    .col-md-11{margin-left: 0% !important;width: 91.6667%;padding: 0;}
    .col-md-1{margin: 0;padding: 0;width: 8.33333%;}
    .option-color{color:#333;}

</style>
<?php
$this->load->view('template/homeheader', $page, $title);
?>

<!---Search Form-----> 
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


<div class="container-fluid fluid-box">
    <div class="container small-fluid-box">
        <!--<div class="row small-fluid-box1">-->
        <div class="row" style="padding:0;">
            <div class="col-md-4 col-xs-12" style="margin-bottom:10px;">
                <div class="select-style">
                    <select name="category" id="category">
                        <option value="">--Select Category--</option>
                        <?php
                        foreach ($category as $key => $cat) {
                            echo ' <option class="option-color" value="' . $cat->id . '">' . $cat->categoryname . '</option>';
                        }
                        ?>
                    </select>
                </div>
            </div>
            <div class="col-md-4 col-xs-12" style="margin-bottom:10px;">
                <div class="select-style">
                    <select name="experience" id="experience">
                        <option value="">--Select Experience--</option>
                        <?php
                        foreach ($experience as $key => $xexp) {
                            echo '<option class="option-color" value="' . $xexp->exp . '">' . $xexp->exp . '</option>';
                        }
                        ?>
                    </select>
                </div>
            </div>
            
        </div>
        <div style="margin-top:20px;"></div>
        <?php echo form_close(); ?>
        <!----Lawyers with Exp. ---->
        <div class = "post-list" id = "postList"> 
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
                                    <h2 class="c-name"><?php echo $value->name; ?></h2>
                                </div>

                                <!----Person Response---->
                                <div class="col-md-6 rate-right ">
                                    <div class="row">
                                        <div class="c_response">65 Responses</div>

                                        <div style="margin-bottom:22px;"></div>

                                        <div class="rating" style="margin-top:2%;">
                                            <p> 
                                                <span class="glyphicon glyphicon-star" style="color:goldenrod"></span>
                                                <span class="glyphicon glyphicon-star half" style="color:goldenrod"></span>
                                                <span class="glyphicon glyphicon-star-empty" style="color:goldenrod"></span>
                                                <span class="glyphicon glyphicon-star-empty" style="color:goldenrod"></span>
                                                <span class="glyphicon glyphicon-star-empty" style="color:goldenrod"></span>


                                                <!--   <?php
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
                                                ?>-->
                                            </p>
                                            <p>200 Raiting</p>
                                        </div>



                                        <!--  <div style="position:absolute; margin-top:12px; right:12px;">
                                              200 Raiting
                                          </div>-->
                                    </div>
                                </div>
                                <!----End Person Response---->

                            </div>

                            <!----Person Deatls in line----> 
                            <div class="row" style="padding-bottom:10px;">
                                <div class="col-md-4 col-xs-12 col-sm-4">
                                    <img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png"> 
                                    Location:&nbsp;
                                    <font style="color:#0276AE;font-weight:bold"><?php echo $value->cityname; ?></font>
                                </div>
                                <div class="col-md-3 col-xs-12 col-sm-3">
                                    Gender: <font style="color:#0276AE;font-weight:bold"><?php echo $value->gender; ?></font> 
                                </div>
                                <div class="col-md-3 col-xs-12 col-sm-3">
                                    Exp: <font style="color:#0276AE;font-weight:bold"><?php echo $value->experience; ?></font>  
                                </div>
                            </div>
                            <!--  <h5 class="h5-font">
                                 <img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png"> 
                                 Location: <font style="color:#0276AE;font-weight:bold"><?php echo $value->cityname; ?></font>
                                 
                                 Gender: <font style="color:#0276AE;font-weight:bold"><?php echo $value->gender; ?></font> 
                                 
                                 Exp: <font style="color:#0276AE;font-weight:bold"><?php echo $value->experience; ?></font> 
                                 </h5>-->
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
                                            $string = substr($stringCut, 0, strrpos($stringCut, ' ')) . '... <a class="readmore-lyw" style="color: #0088ba;" href="view_client/' . base64_encryption($value->id) . '">Read More</a>';
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

                <!-- <div class="small-fluid-box1" style="margin-top:18px;padding-bottom:18px;padding-left:5px;">-->
                <div class="small-fluid-box1">
                    <a style="color:#cc0000; font-size: 14px;">
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
        <!----Lawyers with Exp.---->
    </div>

</div>
<?php $this->load->view('template/footermain', $page, $title); ?>

<style>
    .glyphicon-star {
        font-size: 15px;
        color: #e67e22;
    }
    .half:before {
                position: relative;
                z-index: 9;
                width: 47%;
                display: block;
                overflow: hidden;
            }
         .half:after {
                content: '\e006';
                position: absolute;
                z-index: 8;
                color: #e67e22;
                top: 0;
                left: 0;
            }
  

</style>