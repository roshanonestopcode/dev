<?php
$this->load->view('template/homeheader', $page, $title);
echo $map['js'];
?>
<!-------------Client / Lawyer Profile -------------------->
<div class="container">
    <section style="padding-bottom: 50px;">
        <!--<div class="clearfix" style="padding-bottom:6%"></div>-->
        <div class="clearfix" style="padding-bottom:50px"></div>
        <div class="row">
            <!----User Profile---->
            <div class="col-md-3 col-sm-3 col-xs-12 view-profile-search">
                <?php if (!empty($clientprofile[0]->profile_image)) { ?>
                    <img style="" id="target" alt="" class="img-rounded img-responsive" src="<?php echo $clientprofile[0]->profile_image; ?>"/>
                <?php } else { ?>
                    <img style="" id="target"  class="img-rounded img-responsive" src="<?php echo base_url(); ?>assets/images/default_user.png">
                <?php } ?>
                <br />
                <br />
                <h4><strong>Name:</strong> <?php echo $clientprofile[0]->name; ?></h4><br />
                <h4><strong>City:</strong> <?php
                    if (!empty($clientprofile[0]->city)) {
                        echo $clientprofile[0]->city;
                    } else if (!empty($clientprofile[0]->cityname)) {
                        echo $clientprofile[0]->cityname;
                    } else {
                        echo $clientprofile[0]->location;
                    }
                    ?></h4><br />
                <h4><strong>Gender:</strong><?php echo $clientprofile[0]->gender; ?></h4><br />
                <h4><strong>Experience:</strong> <?php echo $clientprofile[0]->experience; ?></h4><br />
                <h4><strong>Category:</strong> 
                    <ul class="category-ul">
                        <?php
                        $selectedCat = selectedClientcategoryId($clientprofile[0]->id);
                        foreach ($selectedCat as $key => $cat) {
                            if (!empty($cat->cateId))
                                echo '<li> <a href="#" class="category-a">' . selectedClientcategory($cat->cateId) . '</a></li>';
                        }
                        ?>
                    </ul>
                    <?php
                    $client = 'client';
                    $urlstr = $clientprofile[0]->id . "===" . $client;
                    $consult_id = base64_encryption($urlstr);
                    ?>
                    <h2 ><a class="btn btn-invite-search-user" href="<?php echo base_url(); ?>sign_in_as"> Invite </a></h2>  	
            </div>
            <!----End User Profile---->
            <!----User Profile Detail---->
            <div class="col-md-9 col-sm-9 col-xs-12">
                <div class="view-profile-search-desc" style="">
                    <h2 style="font-size:20px;" >Lawyer Description</h2>
                    <hr>
                    
                    <h4 class="lwr-profile-desc"> 
                        <?php echo $clientprofile[0]->description; ?>
                    </h4>
                </div>
                <div class="row lawyer-cat-area">
                    <div class="col-md-12">
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
                </div>
                <!---Availability Container------>     
                <div class="form-group col-md-12">

                    <h3 class="view-profile-search-h3">Availability Time</h3>
                    <hr>
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
                                            <td colspan="9">
                                               <div class="alert no-data-found">
                                                    No Records found.
                                                </div>

                                            </td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <!---Availability Container ----->
                <!---Review Container------>
                <div class="clearfix"></div><br/>
                <div class="form-group col-md-12">
                    <div class="row">
                        <div class="row box-style">
                            <!--Person Review--->
                            <?php
                            if (!empty($review)) {
                                foreach ($review as $key => $value) {
                                    ?>     
                                    <div class="row review-row">
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

                                    <div class="alert no-data-found">
                                     No Review found.
                                </div>

                            <?php } ?>             
                        </div>         
                    </div>
                </div>               
                <!---Review Container------>
                <div class="clearfix"></div>
                <!---Map Container------>
                <div class="form-group col-md-12">
                    <div class="row ">
                        <div class="row box-style">
                           <!-- <h2 class="h2" style="margin-bottom: 25px; color:#777 !important; padding-left:0px;">
                                <label>
                                    Google Map
                                </label>
                            </h2>--->
                            <div id="gmap" style="height:300px;border:1px solid gray;width:100%;">
                                <?php echo $map['html']; ?>
                            </div>
                        </div>        
                    </div>
                </div>
                <!---End Map Container------>
            </div>
            <!----End User Profile Detail---->   
        </div>
        <!-- ROW END -->
    </section>
    <!-- SECTION END -->
</div>
<!------------- End Client / Lawyer Profile -------------------->   
<div style="margin-bottom: 0px !important; padding-top:20px; ">
    <?php $this->load->view('template/footermain', $page, $title); ?>

</div>

