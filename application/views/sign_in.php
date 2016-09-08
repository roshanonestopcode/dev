<!---header----->
<?php
$this->load->view('template/homeheader', $page, $title);
//$type = $this->uri->segment(2);
//$type = base64_decryption($type);
//echo '<br/><br/>';


//$this->session->set_userdata('type', $type);
?>
<!---End header----->

<!-----Login / Registration Form------->
<div class="container-fluid">
    <!--<div class="container">-->
        <!--<div class="row">-->
        <!---Total Test---->
        <div class="form" style="min-height: 463px;">
            <ul class="tab-group">
                <h2 style="color:#07a3f0;">Log in </h2>
            </ul>

            <div class="tab-content">
                <div id="signup">   
                    <?= form_open_multipart('login/login', array('class' => 'login', 'id' => "login")); ?>
                    <span class="loginerror"></span>
                    <div class="field-wrap">
                        <input type="text" autocomplete="off" placeholder="Email Address" class="fromfield-login" id="loginemail" name="email" data-validation="[EMAIL]">
                        <span class="emailerror"></span>
                    </div>

                    <div class="field-wrap">
                        <input type="password" autocomplete="off" placeholder="Password"  class="fromfield-login" id="loginpassword" name="password" data-validation="[NOTEMPTY]">
                    </div>

                    <p class="forgot"> <a data-target="#modalforgetpassword" data-toggle="modal" class="forget-pass">Forgot Password?</a></p>

                    <div class="field-wrap">
                        <div style="width:10%"><input type="checkbox" style="float:left;outline:none;" class="chk-remember-me" value="1" name="user[remember_me]"></div>
                        <div id="remember-me"><a href="#">Remember Me</a></div>
                    </div>

                    <!--<a id="btnLogin" class="btn-login button button-block-login" type="submit">Login</a>-->
                    <input type="submit" class="button button-block-login " value="Login">
                    <a style="cursor:pointer;"  href="<?= $login_url ?>">
                        <img class="button-block-login img-responsive button-block-login-fb" src="<?php echo base_url(); ?>assets/img/fb.jpg">
                    </a>
                    <center><a href="<?php echo base_url(); ?>sign_up">Not Register Yet? Click Here </a></center>
                    <?= form_close(); ?>
                </div>
               <div class="field-wrap">
                    <p class="auto-post"></p>
                </div>
            </div><!-- tab-content -->
        </div> <!-- /form -->

        <!---Total Test---->

        <!----Popup forget password Up Form---->
        <div role="dialog" id="modalforgetpassword" class="modal fade">
            <div class="modal-dialog">    
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" type="button" data-dismiss="modal">&times;</button>
                        <div class="clearfix"></div>
                        <div class="modal-body">
                            <center><span class="forget-email"></span></center>
                            <h4 style="color:#07a3f0">Enter Your Email Address</h4>
                            <?= form_open_multipart('login/forget', array('class' => 'forgetpassword', 'id' => "forgetpassword")); ?>
                            <input type="text" placeholder="Email Address" autocomplete="off" data-validation="[EMAIL]" id="forgetemail" style="height:40px;width:560px;" name="email" class="">
                            <br/>
                            <!--<button id="btnResetpassword" class="btn-login button button-block">Submit</button>-->
                              <input type="submit" class=" button button-block" value="Submit">
                            <?= form_close(); ?>
                            <!---Forget Password Pop-Up----->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!----End popu forget password--->

    <!---</div>-->
</div>

<!----Login  / Registraion Form-------->

<div style="margin-bottom: 0px !important; padding-top:20px; ">
    <?php $this->load->view('template/footermain', $page, $title); ?>
     <?php $this->load->view('register_js', $page, $title); ?>
</div>

