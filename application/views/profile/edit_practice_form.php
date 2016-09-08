<!---header----->
<?php
$this->load->view('template/homeheader', $page, $title);
$user = $this->session->userdata('user');
$mcity = $city;
$mtime = $time;
$isdisabled='';
if ($user['type'] == 'lawyer') {
    if ($_SESSION['practice'] == 1 || $_SESSION['licence'] == 1 || $_SESSION['verify'] == 1) {
        $isdisabled ='disabled="disabled"' ;
    }else{
        $isdisabled ='';
    }
}else{
    $isdisabled ='';
}
?>
<!---End header----->
<style>
    .bg-all{background-image:url(../assets/images/banner1.jpg);background-repeat:no-repeat;top: 0;left: 0;bottom: 0;right: 0;z-index: 1;height:auto; background-attachment:fixed;}
</style>

<!---New Tab Profile Settings--------> 	
<style>
    .demo{width:1000px;}
    .demo h1{margin:0 0 25px;}
    .demo h3{margin:10px 0;}
    pre{background-color:#FFF;}
    @media only screen and (max-width:780px){
        .demo{margin:5%;width:90%;}
        .how-use{display:none;float:left;width:300px;}
    }
    #tabInfo{display:none;}
</style>
<!---End New Tab Profile Settings-----> 
<!--<div class="bg-all">-->
    <div class="container">
        <div class="row profile-setting-style">
            <!---New TAb Container--->
            <div class="demo">
                <div id="tabInfo">
                    Selected tab: <span class="tabName"></span>
                </div>
                <br />
                <br />
                <div id="verticalTab">
                    <ul class="resp-tabs-list">
                        <li>Basic Info</li>
                        <li>Profile Photo</li>
                        <?php if ($user['type'] != 'client') { ?>
                            <li>Practice</li>
                        <?php } ?>
                        <li>Map</li>
                    </ul>
                    <?= form_open_multipart('profile/practice', array('class' => 'updatepractice form-horizontal', 'id' => "updatepractice")); ?>
                    <div class="resp-tabs-container">
                        <!---------------------------***************  BAsic Informtaion *************** ----------------->
                        <div>
                            <!--<div class="col-sm-12 tab-content">-->
                            <!-- <div class="tab-content">  -->
                            <!--<div id="vtab1" class="tab-pane fade in active profile-container" role="tabpanel">-->
                            <div class="row profile-header">    
                                <div class="col-md-12">
                                    <h3 class="">Basic Information</h3>
                                </div>
                            </div>
                            <div class="row form-data">
                                <div class="form-group form-data-input">
                                    <label for="email" class="control-label col-sm-3 col-xs-12">Full Name:</label>
                                    <div class="col-sm-8 col-xs-12">
                                        <input type="text" value="<?php echo $clientprofile[0]->name; ?>" placeholder="Enter Full Name" id="fullname" name="fullname" class="form-control sel-opt">
                                    </div>
                                </div>
                                <input type="hidden" value="<?php echo $clientprofile[0]->type ?>" id="roletype" name="roletype"/>
                                <div class="form-group">
                                    <label for="email" class="control-label col-sm-3 col-xs-12">Gender:</label>
                                    <div class="col-sm-8 col-xs-12">
                                        <select id="gender"  name="gender" class="form-control">
                                            <option value="" >--Select Gender--</option>
                                            <?php
                                            foreach ($gender as $key => $gen) {
                                                if ($gen->gendername == $clientprofile[0]->gender) {
                                                    $gensel = 'selected="selected"';
                                                } else {
                                                    $gensel = '';
                                                }
                                                echo '<option ' . $gensel . '  value="' . $gen->gendername . '">' . $gen->gendername . '</option>';
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>

                                <?php if ($user['type'] == 'lawyer') { ?>
                                    <div class="form-group">
                                        <label for="email" class="control-label col-sm-3 col-xs-12">Experience:</label>
                                        <div class="col-sm-8 col-xs-12">
                                            <select id="exp" name="exp" class="form-control">
                                                <option value="">--Select Experience--</option>
                                                <?php
                                                foreach ($experience as $key => $xexp) {
                                                    if (trim($xexp->exp) == trim($clientprofile[0]->experience)) {
                                                        $expsel = 'selected="selected"';
                                                    } else {
                                                        $expsel = '';
                                                    }
                                                    echo '<option ' . $expsel . '  value="' . $xexp->exp . '">' . $xexp->exp . '</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="email" class="control-label col-sm-3 col-xs-12">Fees:</label>
                                        <div class="col-sm-8 col-xs-12">
                                            <input type="text" class="form-control sel-opt number" name="fees" id="fees" placeholder="Enter Your Fees" value="<?php echo $clientprofile[0]->fees; ?>">
                                        </div>
                                    </div>
                                <?php } ?>
                                <div class="form-group">
                                    <label for="email" class="control-label col-sm-3 col-xs-12">Email Address:</label>
                                    <div class="col-sm-8 col-xs-12">
                                        <input type="text" name="email" value="<?php echo $clientprofile[0]->email; ?>" readonly="readonly"  placeholder="Enter email Address" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="pwd" class="control-label col-sm-3 col-xs-12">Mobile No:</label>
                                    <div class="col-sm-8 col-xs-12">          
                                        <input type="text" name="mobile" value="<?php echo $clientprofile[0]->mobile; ?>"  placeholder="Enter Mobile Number" id="mobile" class="form-control number" maxlength="10">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="pwd" class="control-label col-sm-3 col-xs-12">City:</label>
                                    <div class="col-sm-8 col-xs-12">          
                                        <select class=" form-control" name="city">
                                            <option value="">--Select City--</option>
                                            <?php
                                            if (!empty($city)) {
                                                foreach ($city as $key => $city) {
                                                    if ($city->city_id == $clientprofile[0]->city_id) {
                                                        $selcity = 'selected="selected"';
                                                    } else {
                                                        $selcity = '';
                                                    }
                                                    echo '<option ' . $selcity . ' value="' . $city->city_id . '">' . $city->city_name . '</option>';
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="pwd" class="control-label col-sm-3 col-xs-12">Describe Yourself:</label>
                                    <div class="col-sm-8 col-xs-12">          
                                        <textarea placeholder="Describe Yourself" class="form-control" rows="2" maxlength="500" name="description"><?php echo $clientprofile[0]->description; ?></textarea>
                                    </div>
                                </div>
                                <div align="center" style="margin-top:20px;" class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-9" style="padding:0px;margin:0px;">
                                        <input type="submit" value="Submit" class="submit-button" <?php echo $isdisabled;?>>
                                    </div>
                                </div>  
                            </div><!--Row data End--->

                            <!--  </div>-->
                            <!-- </div>-->
                            <!--   </div>-->
                        </div>
                        <!---------------------------***************  End BAsic Informtaion *************** ----------------->
                        <!---------------------------***************  Photo Upload  *************** ------------------------->                
                        <div>
                            <div class="row profile-header">    
                                <div class="col-md-12">
                                    <h3>Your Photo</h3>
                                </div>
                            </div>
                            <div class="row profile-data">
                                <div class="col-md-4">
                                    <div class="thumbimg" id="uploadpic1">	
                                        <?php if (!empty($clientprofile[0]->profile_image)) { ?>
                                            <img id="target" alt="your image" class="img-responsive img-circle img-adjust" src="<?php echo $clientprofile[0]->profile_image; ?>"/>
                                        <?php } else { ?>
                                            <img  id="target"  class="image_upload_preview img-responsive img-circle img-adjust" src="<?php echo base_url(); ?>assets/images/default_user.png">
                                        <?php } ?>
                                    </div>
                                </div> 

                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p>Clear frontal face photos are an important way for hosts 
                                                and guests to learn about each other. 
                                                It’s not much fun to host a landscape! 
                                                Please upload a photo that clearly shows your face.</p> 
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">        
                                                <div class="col-sm-12">
                                                    <input type='file' id="imgInp" class="btn img-upload" accept="image/*"  name="userfile" />
                                                </div>
                                            </div> 	
                                        </div>
                                    </div>
                                </div>
                                <div align="center" style="margin-top:20px;">
                                    <input type="submit" value="Submit" class="submit-button" <?php echo $isdisabled;?>>
                                </div>  
                            </div>
                        </div>
                        <!---------------------------*************** End Photo Upload  *************** ---------------------->
                        <!---------------------------*************** Practice  *************** ---------------------->                
                        <?php if ($clientprofile[0]->type == 'lawyer') { ?>
                            <div>
                                <!--           <div id="vtab3" class="tab-pane fade in profile-container" role="tabpanel">-->
                                <div class="row profile-header">    
                                    <div class="col-md-12">
                                        <h3> Practice</h3>
                                    </div>
                                </div>
                                <div class="form-data">
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-sm-10 col-xs-12" style="margin-left:10px;">    
                                                <h4 style="padding:20px 0px;; font-size:20px;">Choose UpTo 4 Areas of Practice </h4>
                                                <select id="my-select" name="category[]" multiple="multiple" >
                                                    <?php
                                                    foreach ($category as $key => $cat) {
                                                        if (in_array($cat->id, $clientcategory)) {
                                                            $catsel = 'selected="selected"';
                                                        } else {
                                                            $catsel = '';
                                                        }
                                                        echo ' <option ' . $catsel . ' value="' . $cat->id . '">' . $cat->categoryname . '</option>';
                                                    }
                                                    ?>
                                                </select>     
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div style="display:none" class="multiselect">
                                    <?php
                                    if (!empty($lawyeravailabilitytime)) {
                                        foreach ($lawyeravailabilitytime as $key => $val) {
                                            echo '<input checked="checked"  type="checkbox"  value="' . $val->id . '" name="poid[]">';
                                        }
                                    }
                                    ?>
                                </div> 

                                <!---Row--->
                                <div style="margin-bottom:30px;" class="row">
                                    <h2 style="padding-left:12px;">Availability</h2>
                                    <!---Monday----->
                                    <div class="col-md-3 col-xs-12 available-time">
                                        <?php
                                        $mcount = count(array_filter($timeabilitymonday));

                                        if ($mcount != 0) {
                                            $ischeck1 = 'checked="checked"';
                                            $isDiplay1 = 'block';
                                        } else {
                                            $ischeck1 = '';
                                            $isDiplay1 = 'none';
                                        }
                                        ?>
                                        <div class="checkbox-available">
                                            <div class="row">
                                                <div style="padding:0px;" class="col-md-12">
                                                    <label><input <?php echo $ischeck1; ?> type="checkbox" onclick="ShowHideDiv(this)" id="view_availble_div" class="check-container view_availble_div" value="">&nbsp;Monday</label>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div style="display:<?php echo $isDiplay1; ?>" id="availble_div" class="multiselect">
                                                        <?php
                                                        $chkmonday = '';
                                                        foreach ($mtime as $key => $tm) {
                                                            if (in_array($tm->time, $timeabilitymonday)) {
                                                                $chkmonday = 'checked="checked"';
                                                            } else {
                                                                $chkmonday = '';
                                                            }
                                                            echo '<input type="hidden" name="monday1[]" value="' . $tm->time . '" />';
                                                            echo '<label><input class="checkbox1"  ' . $chkmonday . ' type="checkbox" value="' . $tm->time . '" name="monday[]">&nbsp;' . $tm->time . '</label>';
                                                        }
                                                        ?>

                                                    </div> 
                                                </div>
                                            </div> 
                                        </div> 
                                    </div>
                                    <!--End Monday----->


                                    <!---Tuesday----->
                                    <div class="col-md-3 col-xs-12 available-time">
                                        <?php
                                        $tcount = count(array_filter($timeabilitytuesday));
                                        if ($tcount != 0) {
                                            $ischeck = 'checked="checked"';
                                            $isDiplay = 'block';
                                        } else {
                                            $ischeck = '';
                                            $isDiplay = 'none';
                                        }
                                        ?>
                                        <div class="checkbox-available">
                                            <div class="row">
                                                <div style="padding:0px;" class="col-md-12">
                                                    <label><input type="checkbox" <?php echo $ischeck; ?> onclick="ShowHideDiv2(this)" id="view_availble_div2" class="check-container view_availble_div2" value="">&nbsp;Tuesday</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div style="display:<?php echo $isDiplay; ?>" id="availble_div2" class="multiselect">
                                                        <?php
                                                        $chktuesday = '';
                                                        foreach ($time as $key => $tm) {
                                                            if (in_array($tm->time, $timeabilitytuesday)) {
                                                                $chktuesday = 'checked="checked"';
                                                            } else {
                                                                $chktuesday = '';
                                                            }
                                                            echo '<input type="hidden" name="tuesday1[]" value="' . $tm->time . '" />';
                                                            echo '<label><input class="checkbox2" ' . $chktuesday . ' type="checkbox" value="' . $tm->time . '" name="tuesday[]">&nbsp;' . $tm->time . '</label>';
                                                        }
                                                        ?> 
                                                    </div> 
                                                </div>
                                            </div> 
                                        </div> 
                                    </div>
                                    <!---End Tuesday----->


                                    <!--- Wednesday ----->
                                    <div class="col-md-3 col-xs-12 available-time">
                                        <?php
                                        $wcount = count(array_filter($timeabilitywednesday));
                                        if ($wcount != 0) {
                                            $ischeck = 'checked="checked"';
                                            $isDiplay = 'block';
                                        } else {
                                            $ischeck = '';
                                            $isDiplay = 'none';
                                        }
                                        ?>
                                        <div class="checkbox-available">
                                            <div class="row">
                                                <div style="padding:0px;" class="col-md-12">
                                                    <label><input <?php echo $ischeck; ?>type="checkbox" onclick="ShowHideDiv3(this)" id="view_availble_div3" class="check-container view_availble_div3"  value=""> Wednesday</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div style="display: <?php echo $isDiplay; ?>" id="availble_div3" class="multiselect">
                                                        <?php
                                                        $chkwednesday = '';
                                                        foreach ($time as $key => $tm) {
                                                            if (in_array($tm->time, $timeabilitywednesday)) {
                                                                $chkwednesday = 'checked="checked"';
                                                            } else {
                                                                $chkwednesday = '';
                                                            }
                                                            echo '<input type="hidden" name="wednesday1[]" value="' . $tm->time . '" />';
                                                            echo '<label><input class="checkbox3" ' . $chkwednesday . ' type="checkbox" value="' . $tm->time . '" name="wednesday[]">&nbsp;' . $tm->time . '</label>';
                                                        }
                                                        ?> 
                                                    </div> 
                                                </div>
                                            </div> 
                                        </div> 
                                    </div>
                                    <!---End Wednesday ----->

                                    <!--- Thurday ----->
                                    <div class="col-md-3 col-xs-12 available-time">
                                        <?php
                                        $thcount = count(array_filter($timeabilitythursday));
                                        if ($thcount != 0) {
                                            $ischeck = 'checked="checked"';
                                            $isDiplay = 'block';
                                        } else {
                                            $ischeck = '';
                                            $isDiplay = 'none';
                                        }
                                        ?>
                                        <div class="checkbox-available">
                                            <div class="row">
                                                <div style="padding:0px;" class="col-md-12">
                                                    <label><input <?php echo $ischeck; ?> type="checkbox" onclick="ShowHideDiv4(this)" id="view_availble_div4" class="check-container view_availble_div4" value="">&nbsp;Thursday</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div style="display:<?php echo $isDiplay; ?>" id="availble_div4" class="multiselect">
                                                        <?php
                                                        $chkthursday = '';
                                                        foreach ($time as $key => $tm) {
                                                            if (in_array($tm->time, $timeabilitythursday)) {
                                                                $chkthursday = 'checked="checked"';
                                                            } else {
                                                                $chkthursday = '';
                                                            }
                                                            echo '<input type="hidden" name="thursday1[]" value="' . $tm->time . '" />';
                                                            echo '<label><input class="checkbox4" ' . $chkthursday . ' type="checkbox" value="' . $tm->time . '" name="thursday[]">&nbsp;' . $tm->time . '</label>';
                                                        }
                                                        ?> 
                                                    </div> 
                                                </div>
                                            </div> 
                                        </div> 
                                    </div>
                                    <!---End Thurday ----->
                                </div> <!--- row Finish--->
                                <div class="row">
                                    <!--- Friday ----->
                                    <div class="col-md-3 col-xs-12 available-time">
                                        <?php
                                        $fcount = count(array_filter($timeabilityfriday));
                                        if ($fcount != 0) {
                                            $ischeck = 'checked="checked"';
                                            $isDiplay = 'block';
                                        } else {
                                            $ischeck = '';
                                            $isDiplay = 'none';
                                        }
                                        ?>
                                        <div class="checkbox-available">
                                            <div class="row">
                                                <div style="padding:0px;" class="col-md-12">
                                                    <label><input <?php echo $ischeck; ?> type="checkbox" onclick="ShowHideDiv5(this)" id="view_availble_div5" class="check-container view_availble_div5" value="">&nbsp;Friday</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div style="display:<?php echo $isDiplay; ?>" id="availble_div5" class="multiselect">
                                                        <?php
                                                        $chkfriday = '';
                                                        foreach ($time as $key => $tm) {
                                                            if (in_array($tm->time, $timeabilityfriday)) {
                                                                $chkfriday = 'checked="checked"';
                                                            } else {
                                                                $chkfriday = '';
                                                            }
                                                            echo '<input type="hidden" name="friday1[]" value="' . $tm->time . '" />';
                                                            echo '<label><input  class="checkbox5" ' . $chkfriday . ' type="checkbox" value="' . $tm->time . '" name="friday[]">&nbsp;' . $tm->time . '</label>';
                                                        }
                                                        ?> 

                                                    </div> 
                                                </div>
                                            </div> 
                                        </div> 
                                    </div>
                                    <!---End Friday ----->


                                    <!--- Saturday ----->
                                    <div class="col-md-3 col-xs-12 available-time">
                                        <?php
                                        $stcount = count(array_filter($timeabilitysaturday));
                                        if ($stcount != 0) {
                                            $ischeck = 'checked="checked"';
                                            $isDiplay = 'block';
                                        } else {
                                            $ischeck = '';
                                            $isDiplay = 'none';
                                        }
                                        ?>
                                        <div class="checkbox-available">
                                            <div class="row">
                                                <div style="padding:0px;" class="col-md-12">
                                                    <label><input <?php echo $ischeck; ?> type="checkbox" onclick="ShowHideDiv6(this)" id="view_availble_div6" class="check-container view_availble_div6" value="">&nbsp;Saturday</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div style="display:<?php echo $isDiplay; ?>" id="availble_div6" class="multiselect">
                                                        <?php
                                                        $chksaturday = '';
                                                        foreach ($time as $key => $tm) {
                                                            if (in_array($tm->time, $timeabilitysaturday)) {
                                                                $chksaturday = 'checked="checked"';
                                                            } else {
                                                                $chksaturday = '';
                                                            }
                                                            echo '<input type="hidden" name="saturday1[]" value="' . $tm->time . '" />';
                                                            echo '<label><input  class="checkbox6"  ' . $chksaturday . ' type="checkbox" value="' . $tm->time . '" name="saturday[]">&nbsp;' . $tm->time . '</label>';
                                                        }
                                                        ?> 
                                                    </div> 
                                                </div>
                                            </div> 
                                        </div> 
                                    </div>

                                    <!--- End Saturday ----->

                                    <!--- Sunday ----->
                                    <div class="col-md-3 col-xs-12 available-time">
                                        <?php
                                        $sucount = count(array_filter($timeabilitysunday));
                                        if ($sucount != 0) {
                                            $ischeck = 'checked="checked"';
                                            $isDiplay = 'block';
                                        } else {
                                            $ischeck = '';
                                            $isDiplay = 'none';
                                        }
                                        ?>
                                        <div class="checkbox-available ">
                                            <div class="row">
                                                <div style="padding:0px;" class="col-md-12">
                                                    <label><input <?php echo $ischeck; ?> type="checkbox" onclick="ShowHideDiv7(this)" id="view_availble_div7" class="check-container view_availble_div7" value="">&nbsp;Sunday</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div style="display:<?php echo $isDiplay; ?>" id="availble_div7" class="multiselect">
                                                        <?php
                                                        $chksunday = '';
                                                        foreach ($time as $key => $tm) {
                                                            if (in_array($tm->time, $timeabilitysunday)) {
                                                                $chksunday = 'checked="checked"';
                                                            } else {
                                                                $chksunday = '';
                                                            }
                                                            echo '<input type="hidden" name="sunday1[]" value="' . $tm->time . '" />';
                                                            echo '<label><input  class="checkbox6" ' . $chksunday . ' type="checkbox" value="' . $tm->time . '" name="sunday[]">&nbsp;' . $tm->time . '</label>';
                                                        }
                                                        ?> 
                                                    </div> 
                                                </div>
                                            </div> 
                                        </div> 
                                    </div>
                                    <!--- End Sunday ----->
                                </div>

                                <div align="center" style="margin-top:20px;">
                                    <input type="submit" value="Submit" class="submit-button" <?php echo $isdisabled;?>>
                                </div>   
                                <!---Row--->
                                <br/><br/><br/>
                                <!--       </div>-->
                            </div>
                        <?php } ?>

                        <!---------------------------*************** End Practice  *************** ----------------------> 


                        <!---------------------------*************** MAp  *************** ----------------------> 
                        <div>

                            <!--   <div id="vtab4" class="tab-pane fade profile-container2" role="tabpanel">-->
                            <div class="row profile-header">    
                                <div class="col-md-12">
                                    <h3>Map Setting</h3>
                                </div>
                            </div>
                            <?php
                            $address = $clientprofile[0]->address;
                            $expadd = explode(',', $address);
                            ?>
                            <div class="row form-data">
                                <div class="form-group form-data-input">
                                    <label for="email" class="control-label col-sm-3 col-xs-12">Street:</label>
                                    <div class="col-sm-8 col-xs-12">
                                        <input type="text" value="<?php echo $expadd[0]; ?>" placeholder="Street" id="street" name="street" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group form-data-input">
                                    <label for="email" class="control-label col-sm-3 col-xs-12">Additional:</label>
                                    <div class="col-sm-8 col-xs-12">
                                        <input type="text"value="<?php echo $expadd[1]; ?>" placeholder="Additional" id="additional" name="additional" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group form-data-input">
                                    <label for="email" class="control-label col-sm-3 col-xs-12">City:</label>
                                    <div class="col-sm-8 col-xs-12">
                                        <select class=" form-control" name="mcity">
                                            <option value="">--Select City--</option>
                                            <?php
                                            if (!empty($mcity)) {
                                                foreach ($mcity as $key => $mc) {
                                                    if ($mc->city_name == $expadd[2]) {
                                                        $selmcity = 'selected="selected"';
                                                    } else {
                                                        $selmcity = '';
                                                    }
                                                    echo '<option ' . $selmcity . ' value="' . $mc->city_name . '">' . $mc->city_name . '</option>';
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group form-data-input">
                                    <label for="email" class="control-label col-sm-3 col-xs-12">State/Province:</label>
                                    <div class="col-sm-8 col-xs-12">
                                        <input type="text" value="<?php echo $expadd[3]; ?>" placeholder="State/Province" id="additional" name="state" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group form-data-input">
                                    <label for="email" class="control-label col-sm-3 col-xs-12">Postal Code:</label>
                                    <div class="col-sm-8 col-xs-12">
                                        <input type="text" value="<?php echo $expadd[4]; ?>" placeholder="Postal Code" maxlength="6" id="postalcode" name="postalcode" class="form-control number">
                                    </div>
                                </div>

                                <div align="center" style="margin-top:20px;" class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-9" style="padding:0px;margin:0px;">
                                        <input type="submit" value="Submit" class="submit-button" <?php echo $isdisabled;?>>
                                    </div>
                                </div>  
                            </div>
                            <!--    </div>-->

                        </div>
                        <!---------------------------*************** MAp  *************** ----------------------> 

                        <?= form_close(); ?>         
                    </div>
                </div>
                <!--	<div style="height: 30px; clear: both"></div>-->
            </div>
            <!---End New Tab System-->                

        </div>
    </div><!---container-->	
<!--</div>--><!--BG--ALL-->

<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#target').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function () {
        readURL(this);
    });

    $(document).ready(function () {
        $(function () {
            // initialize sol
            $('#my-select').searchableOptionList(
                    {
                        showSelectAll: false,
                        size: 4
                    }

            );

        });

    });

    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion           
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            activate: function (event)
            { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#tabInfo');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
        $('#verticalTab').easyResponsiveTabs({
            type: 'vertical',
            width: 'auto',
            fit: true
        });

        $(".number").keypress(function (e) {
            //if the letter is not digit then display error and don't type anything
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                return false;
            }
        });
    });
</script>
<!---End New Tab Profile Settings-----> 


<!---Footer------->