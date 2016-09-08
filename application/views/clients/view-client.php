<!---header----->
<?php
$this->load->view('template/homeheader', $page, $title);
$user = $this->session->userdata('user');
?>
<?php echo $map['js']; ?>
<!---End header----->
<style>
.bg-all{
   /* background-image:url(../assets/images/banner1.jpg);*/
    background-repeat:no-repeat;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    z-index: 1;
    height:auto;
    background-attachment:fixed;
}
</style>
<div class="bg-all">
<div class="container-fluid">
    <div class="container profileDiv2">
        <!----First Container Profile--->
        <div class="row profileDiv2-row profile-setting-style">
            <div class="col-md-3 col-xs-12">
                <div id="uploadpic1" class="thumbimg">	
                    <?php if (!empty($clientprofile[0]->profile_image)) { ?>
                        <img style="margin-top:18px;" id="target" alt="" class="img-circle img-responsive img-adjust" src="<?php echo $clientprofile[0]->profile_image; ?>"/>
                    <?php } else { ?>
                        <img style="margin-top:18px;" id="target"  class="image_upload_preview img-responsive img-circle img-adjust" src="<?php echo base_url(); ?>assets/images/default_user.png">
                    <?php } ?>
                </div>
            </div>
            <div class="col-md-9 col-xs-12">
                <div class="row">
                    <div class="col-md-12">
                    
                        <div class="row n-rating">
                            <div class="col-md-6 col-xs-5">
                                <h2 class="h2 h2-name"><label>Mr.</label>  <?php echo $clientprofile[0]->name; ?></h2> 
                            </div>   

                            <div align="right" class="col-md-6 col-xs-7 rating-div">
                                <h2><a class="btn-invite" href="#">2.5</a></h2>
                                <p class="p-rate">50 Rating</p> 
                            </div> 
                          <a href="javascript:window.history.go(-1);">
                               <!-- <span class="edit-profile" class="glyphicon glyphicon-step-backward">Back</span>-->
                               <!-- <img class="back-to-profile" src="../assets/images/back.png">-->
                            </a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4 col-xs-12 select-cat">
                        <?php
                        if (!empty($clientcategory)) {
                            foreach ($clientcategory as $key => $value) {
                                echo "<p class=\"cat-name\"><a>" . selectedClientcategory($value) . "</a></p>";
                            }
                        } else {
                            echo "<p class=\"cat-name\"><a> No practice define</a></p>";
							echo "<p class=\"cat-name\"><a> No practice define</a></p>";
							echo "<p class=\"cat-name\"><a> No practice define</a></p>";
							echo "<p class=\"cat-name\"><a> No practice define</a></p>";
                        }
                        ?>
                    </div>
                    <div class="col-md-8 col-xs-12">
                        <div class="row">
                            <h2 class="col-md-12 exp-div"><?php
                                echo $clientprofile[0]->experience . " of Experience";
                                ?>
                            </h2>
                        </div>
                        <div style="margin-top:15%;" class="row">

                            <h2 ><a class="btn-invite btn-invite-case" href="#">Invite to My Case</a></h2>  	

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> 
    <!----First Container Profile--->
    
    
    <!----Second Container Descriptions--->
    <div class="container profileDiv2">
        <div class="row profileDiv2-row">          
            <div style="background-color:#FFF;" class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row box-style">
                            <h2 class="h2"><label>Profile Details</label></h2>
                           
                           <!--Profile Details-->
                           		<div class="row">
									<div class="col-md-6 col-xs-12 " style="margin:0;padding:0;">
                                    	<?php
                                        echo '<h3 class=\"cat-profile\"><a class=\"cat-profile\" style="color:#333;"><strong>Mobile No: </strong>' . $clientprofile[0]->mobile . '</h3>';
					echo '<h3 class=\"cat-profile\"><a class=\"cat-profile\" style="color:#333;"><strong>Location: </strong> ' . $clientprofile[0]->cityname . '</h3>';
	
                                    	?>
									</div>
                                    <div class="col-md-6 col-xs-12" style="margin:0;padding:0;">
                                    		<?php
                                        echo '<h3 class=\"cat-profile\"><a class=\"cat-profile\" style="color:#333;"><strong>Email Id: </strong> ' . $clientprofile[0]->email . '</h3>';
                                    	?>
                                    
                                    </div>
                                                                    
                                </div>
                           <!--Profile Details-->

                        </div>               
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!----Second Container Descriptions--->
    

    <!----Third Container Descriptions--->
    <div class="container profileDiv2">
        <div class="row profileDiv2-row">          
            <div style="background-color:#FFF;" class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row box-style">
                            <h2 class="h2"><label>Description</label></h2>
                            <p style="text-align:justify;"><?php echo $clientprofile[0]->description; ?></p>

                        </div>               
                    </div>
                </div>
            </div>
        </div>
    </div>
     <!----End Third Container Descriptions--->
    
    <!---Google MAp Container------>
    <div class="container profileDiv2">
        <div class="row profileDiv2-row"> 
            <div class="row box-style">
                <h2 class="h2"><label>Google Map</label></h2>
                <div id="gmap" style="height:300px;">
                    <?php echo $map['html']; ?>
                </div>
            </div>        
        </div>
    </div>
    <!---Google MAp Container------>
    <!----Second Contrianer Descriptions--->

    <!---Availability Container------>
    <div class="container profileDiv2">
        <div class="row profileDiv2-row"> 
            <!---Availability--->
            <h2 class="h2"><label>Availability</label></h2>
            <!--<h2 class="title">Week Days</h2>-->

             <p> 
                 <font style="background-color:#990000; padding:1px 15px;"></font> &nbsp; indicates Busy Schedule
                 <font style="background-color:#006600; padding:1px 15px;"></font> &nbsp; Indicates Available  
             </p>
            <div class="row">

                <!--Availability---->
                <div style="overflow-x:auto;">
                    <table>
                        <tbody>
                            <tr>
                                <th>Monday</th>
                                <th>Tuesday</th>
                                <th>Wednesday</th>
                                <th>Thursday</th>
                                <th>Friday</th>
                                <th>Saturday</th>
                                <th>Sunday</th>
                            </tr>
                            <?php
                            if (!empty($lawyeravailability)) {
                                $i = 0;
                                foreach ($lawyeravailability as $key => $value) {
                                    ?>
                                    <tr>
                                        <td>
                                            <?php
                                            if (in_array($value->monday, $time)) {
                                                $sv = $value->monday;
                                                $ss = 'rd';
                                            } else {
                                                $sv = $time[$i];
                                                $ss = 'gr';
                                            }
                                            echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            if (in_array($value->tuesday, $time)) {
                                                $sv = $value->tuesday;
                                                $ss = 'rd';
                                            } else {
                                                $sv = $time[$i];
                                                $ss = 'gr';
                                            }
                                            echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            if (in_array($value->wednesday, $time)) {
                                                $sv = $value->wednesday;
                                                $ss = 'rd';
                                            } else {
                                                $sv = $time[$i];
                                                $ss = 'gr';
                                            }
                                            echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            if (in_array($value->thursday, $time)) {
                                                $sv = $value->thursday;
                                                $ss = 'rd';
                                            } else {
                                                $sv = $time[$i];
                                                $ss = 'gr';
                                            }
                                            echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            if (in_array($value->friday, $time)) {
                                                $sv = $value->friday;
                                                $ss = 'rd';
                                            } else {
                                                $sv = $time[$i];
                                                $ss = 'gr';
                                            }
                                            echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                            ?>
                                        </td>
                                        <td>

                                            <?php
                                            if (in_array($value->saturday, $time)) {
                                                $sv = $value->saturday;
                                                $ss = 'rd';
                                            } else {
                                                $sv = $time[$i];
                                                $ss = 'gr';
                                            }
                                            echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                            ?>
                                        </td>
                                        <td>

                                            <?php
                                            if (in_array($value->sunday, $time)) {
                                                $sv = $value->sunday;
                                                $ss = 'rd';
                                            } else {
                                                $sv = $time[$i];
                                                $ss = 'gr';
                                            }
                                            echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                            ?>
                                        </td>

                                    </tr>
                                    <?php
                                    $i++;
                                }
                            } else {
                                ?>
                                <tr>
                                    <td colspan="12">
                                       <div class="alert no-data-found"> 
                                                No Record Found 
                                         </div>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
                <!--Availability--->
            </div>   

            <!--Availability----> 
        </div>
    </div>

    <!---Availability Container ----->

    <!---Review Container------>
    <div class="container profileDiv2">
        <div class="row profileDiv2-row"> 
            <div class="col-md-12">
                <div class="row ">
                    <h2 class="h2"><label>Review</label></h2>
                    <!--Person Review--->
                    <?php
                    if (!empty($review)) {
                        $ct = 0;
                        foreach ($review as $key => $value) {
                            if ($value->fromuser_id == $user['userId']) {
                                $ct++;
                            }
                            ?>
                            <div style="background-color:#f2f2f2;" class="row review-row">
                                <div class="col-md-3">
                                    <h4 class="review-person"><?php echo $value->name; ?></h4>
                                </div>
                                <div  class="col-md-9 rating-div align">
                                    <ul class="codexworld_rating_widget">
                                      <?php /*?>  <?php
                                        for ($i = 1; $i <= $value->rating; $i++) {
                                            echo '<li style="background-image: url(&quot;../assets/images//widget_star.gif&quot;); background-position: 0px -28px;"><span>1</span></li>';
                                        }
                                        ?><?php */?>
                                    </ul>
                                    <div align="right" class="">
                                        <h2>
                                            <a class="btn-invite-small" href="#">
                                                <?php echo $value->total_points; ?>
                                            </a>
                                            <p class="p-rate-small">Rating 5</p> 
                                        </h2>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <p class="review-person-content">
                                            <?php echo $value->comment; ?>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="review-sep"> </div>
                            <?php
                        }
                    } else {
                        ?>
                        <div style="background-color:#f2f2f2;" class="row review-row">
                            <br/>
                             <div class="alert no-data-found"> 
                                No Record Found 
                            </div>
                        </div>
                    <?php } ?>
                    <?php
                       if($ct>0){
                           $isreviewDiplay='none;';
                       }else{
                           $isreviewDiplay='block;';  
                       }
                    ?>
                    <!--Person Review---> 
                    <?php echo $this->session->flashdata('actionMessage'); ?>
                    <br/>
                    <div class="review-form" style="display:<?php echo $isreviewDiplay; ?>">
                        <?= form_open_multipart('save_comments', array('class' => 'form-control form-search input-search', 'id' => "save-comment")); ?>
                        <input name="u_id" value="<?php echo $clientprofile[0]->id; ?>"  id="u_id" type="hidden"/>
                        <input name="fromuser_id" value="<?php echo $user['userId']; ?>" id="fromuser_id" type="hidden" />
                        <input name="rating" value="0" id="rating_star" type="hidden" postID="1" />
                        <input name="total_points" value="" id="total_points" type="hidden" />
                        <div class="overall-rating" style="float:right;">(Average Rating <span id="avgrat" >
                                <?php echo $ratingRow['average_rating']; ?></span>
                            Based on <span id="totalrat"><?php echo $ratingRow['rating_number']; ?></span>  rating)</span>
                        </div>
                        <div class="form-group">
                            <label for="comment">Comment:</label>
                            <textarea class="form-control rating_comment" rows="2" id="rating_comment" name="rating_comment"></textarea>
                        </div>
                         <input type="button" class="btn search-button" id="btn-save-comment" value="Comment"/>

                        <?php echo form_close(); ?>
                    </div>
                    
                </div>
                
            </div>  
            
        </div>
            
    </div>
    <!---Review Container------>
    <div  style="margin-top:0px !important;">
        <?php $this->load->view('template/footermain', $page, $title); ?>
    </div>
</div>

</div> <!--big-all-->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/rating.js"></script>
<link href="<?php echo base_url(); ?>assets/css/rating.css" rel="stylesheet" type="text/css">
<script>
    $(function () {
        $('#successMessage').delay(5000).fadeOut('slow');
        $(".rating_comment").change(function (event) {
            $('#rating_comment').css('border', '1px solid green');
        });

        $("#btn-save-comment").click(function (event) {
            if ($('#rating_comment').val() == '') {
                $('#rating_comment').css('border', '1px solid #a94442');
                $('#rating_comment').focus();
                return false;
            }
            if ($('#rating_star').val() == '0') {
                alert('Select Rating star');
                return false;
            }
            $('#save-comment').submit();
        });


        $("#rating_star").codexworld_rating_widget({
            starLength: '5',
            initialValue: '',
            callbackFunctionName: 'processRating',
            imageDirectory: '../assets/images/',
            inputAttr: 'postID'
        });
    });

    function processRating(val, attrVal) {
        $.ajax({
            type: 'POST',
            url: "<?php echo base_url(); ?>save_rating",
            data: 'postID=' + attrVal + '&ratingPoints=' + val,
            dataType: 'json',
            success: function (data) {
                if (data.status == 'ok') {
                    //alert('You have rated ' + val + ' to CodexWorld');
                    $('#avgrat').text(data.average_rating);
                    $('#totalrat').text(data.rating_number);
                    $('#total_points').val(data.average_rating);
                } else {
                    alert('Some problem occured, please try again.');
                }
            }
        });
    }
</script>
<!---Footer------->
