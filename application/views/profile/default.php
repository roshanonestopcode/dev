<!---header----->
<?php
$this->load->view('template/homeheader', $page, $title);
$user = $this->session->userdata('user');
?>
<?php echo $map['js']; ?>
<!---End header----->
<div class="bg-all">
    <div class="container-fluid">
        <div class="container profileDiv2">
            <!----First Container Profile--->
            <div class="row profileDiv2-row profile-setting-style">
                <div class="col-md-3 col-xs-12">
                    <div id="uploadpic1" class="thumbimg">	
                        <?php if (!empty($clientprofile[0]->profile_image)) { ?>
                            <img style="margin-top:18px;" id="target" alt="" class="img-circle img-adjust" src="<?php echo $clientprofile[0]->profile_image; ?>"/>
                        <?php } else { ?>
                            <img style="margin-top:18px;" id="target"  class="image_upload_preview img-circle img-adjust" src="<?php echo base_url(); ?>assets/images/default_user.png">
                        <?php } ?>
                    </div>
                </div>
                <div class="col-md-9 col-xs-12">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row ">

                                <div class="col-md-8 col-xs-5">
                                    <h2 class="h3"><label>Mr</label>  <?php echo $clientprofile[0]->name; ?></h2> 
                                    <?php
                                    if ($user['type'] == 'client') {
                                     /*   echo '<h3 ><font class=\"cat-profile\"><strong>Gender: </strong>' .$clientprofile[0]->gender .'</font></a> </h3>';*/
                                        echo '<h3 ><font class=\"cat-profile\"><strong>Email Id: </strong>' .$clientprofile[0]->email .'</font></a> </h3>';
                                        echo '<h3 ><font class=\"cat-profile\"><strong>Mobile No: </strong>' .$clientprofile[0]->mobile .'</font></a> </h3>';
                                        echo '<h3 ><font class=\"cat-profile\"><strong>Location: </strong>' .$clientprofile[0]->cityname .'</font></a> </h3>';
  
                                    }
                                    ?>
                                </div>   
                                <?php if ($user['type'] == 'lawyer') { ?>
                                    <div align="right" class="col-md-4 col-xs-7 rating-div">
                                        <h2><a class="btn-invite" href="#">2.5</a></h2>
                                        <p class="p-rate">50 Rating</p> 
                                    </div> 
                                <?php } ?>

                                <a class="" href="<?php echo base_url(); ?>edit_profile">
                                   <!-- <img class="edit-profile" src="assets/images/edit.png">-->
                                    <font class="edit-profile"> Edit </font>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4 col-xs-12 select-cat">
                            <?php
                            if ($user['type'] == 'lawyer') {
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
                            } else {

                            }
                            ?>
                        </div>
                        <div class="col-md-8 col-xs-12">
                            <div class="row">
                                <div class="col-md-12 exp-div2">
                                    <h2 class="exp-div"><?php
                                        if ($user['type'] == 'lawyer') {
                                            echo $clientprofile[0]->experience . " of Experience";
                                        }
                                        ?>
                                    </h2>
                                </div>
                            </div>
                            <div class="row " style="margin-top:15%;" >
                                <div class="col-md-12 col-xs-12 invite-case-rt">
                                    <?php if ($user['type'] == 'lawyer') { ?>
                                        <!--<h2 class=""><a class="btn-invite btn-invite-case" href="#">Invite to My Case</a></h2>-->  	
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <!----First Container Profile--->


        <!----Second Container Descriptions--->
        <?php if ($user['type'] == 'lawyer') { ?>
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
                                            

                                       
                                           /* echo '<h3 ><font class=\"cat-profile\"><strong>Gender: </strong>' .$clientprofile[0]->gender .'</font></a> </h3>';*/
                                            echo '<h3 ><font class=\"cat-profile\"><strong>Location: </strong>' .$clientprofile[0]->cityname .'</font></a> </h3>';
                                            ?>
                                        </div>
                                        <div class="col-md-6 col-xs-12" style="margin:0;padding:0;">
                                            <?php
                                           echo '<h3 ><font class=\"cat-profile\"><strong>Email Id: </strong>' .$clientprofile[0]->email .'</font></a> </h3>';
                                           echo '<h3 ><font class=\"cat-profile\"><strong>Mobile No: </strong>' .$clientprofile[0]->mobile .'</font></a> </h3>';
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
        <?php } ?>
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
        <!----Third Container Descriptions--->
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
        <?php if ($user['type'] == 'lawyer') { ?>
            <!---Availability Container------>
            <div class="container profileDiv2">
                <div class="row profileDiv2-row"> 
                    <!---Availability--->
                    <h2 class="h2"><label>Availability</label></h2>
                    <!--<h2 class="title">Week Days</h2>-->
                    <p> <font style="background-color:#990000; padding:1px 15px;"></font> &nbsp; indicates Busy Schedule
                        <font style="background-color:#006600; padding:1px 15px;"></font> &nbsp; Indicates Available  </p>
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
                                                        $ss = 'gr';
                                                    } else {
                                                        $sv = $time[$i];
                                                        $ss = 'rd';
                                                    }
                                                    echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php
                                                    if (in_array($value->tuesday, $time)) {
                                                        $sv = $value->tuesday;
                                                        $ss = 'gr';
                                                    } else {
                                                        $sv = $time[$i];
                                                        $ss = 'rd';
                                                    }
                                                    echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php
                                                    if (in_array($value->wednesday, $time)) {
                                                        $sv = $value->wednesday;
                                                        $ss = 'gr';
                                                    } else {
                                                        $sv = $time[$i];
                                                        $ss = 'rd';
                                                    }
                                                    echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php
                                                    if (in_array($value->thursday, $time)) {
                                                        $sv = $value->thursday;
                                                        $ss = 'gr';
                                                    } else {
                                                        $sv = $time[$i];
                                                        $ss = 'rd';
                                                    }
                                                    echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php
                                                    if (in_array($value->friday, $time)) {
                                                        $sv = $value->friday;
                                                        $ss = 'gr';
                                                    } else {
                                                        $sv = $time[$i];
                                                        $ss = 'rd';
                                                    }
                                                    echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                                    ?>
                                                </td>
                                                <td>

                                                    <?php
                                                    if (in_array($value->saturday, $time)) {
                                                        $sv = $value->saturday;
                                                        $ss = 'gr';
                                                    } else {
                                                        $sv = $time[$i];
                                                        $ss = 'rd';
                                                    }
                                                    echo '<a class = "cat-name-' . $ss . '">' . $sv . '</a>';
                                                    ?>
                                                </td>
                                                <td>

                                                    <?php
                                                    if (in_array($value->sunday, $time)) {
                                                        $sv = $value->sunday;
                                                        $ss = 'gr';
                                                    } else {
                                                        $sv = $time[$i];
                                                        $ss = 'rd';
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
                                            <td rowspan="6">
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
                                foreach ($review as $key => $value) {
                                    ?>     
                                    <div style="background-color:#DFDFDF;" class="row review-row">
                                        <div class="col-md-3">
                                            <h4 class="review-person"><?php echo $value->name; ?></h4>
                                        </div>
                                        <div  class="col-md-9 rating-div">

                                            <div align="right" class="">
                                                <h2><a class="btn-invite-small" href="#">2.5</a><p class="p-rate-small">Rating 200</p> </h2>

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <p class="review-person-content"> <?php echo $value->comment; ?>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Person Review---> 
                                    <div class="review-sep"></div>
                                    <?php
                                }
                            } else {
                                ?>
                                <div style="background-color:#DFDFDF;" class="row review-row">
                                      <div class="alert no-data-found"> 
                                            No Record Found 
                                        </div>
                                </div>
                            <?php } ?>             

                        </div>
                    </div>               
                </div>
            </div>
            <!---Review Container------>
        <?php } ?>



          
    </div>
  
</div> <!--BG all-->
<!---Footer------->
<div style="margin-top:40px;">
    <?php $this->load->view('template/footermain', $page, $title); ?>
</div>
