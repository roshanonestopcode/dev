<!---header----->
<?php $this->load->view('template/homeheader', $page, $title); ?>
<!---End header----->
<div class="container-fluid" >
    <div class="container" >
        <!---Register Form ---->
        <div class="form1" >
            <ul class="tab-group">
                <h2 style="color:#07a3f0;">Choose new password</h2>
            </ul>
            <div class="tab-content">
                <span class="loginerror"></span>
                <center>
                    <div id="signup">   
                        <?= form_open_multipart('login/resetpassword', array('class' => 'resetpassword', 'id' => "resetpassword")); ?>
                        <div class="field-wrap field">

                            <input type="hidden" value="<?php echo $UserID; ?>" id="id" name="id"/>
                            <input type="password" class="fromfield-otp" id="password" placeholder="Password" name="password" value=""  data-validation="[L>=6]"/>
                        </div>
                        <div class="clearfix"></div>
                        <div class="field-wrap field">

                            <input type="password" class="fromfield-otp"  placeholder="Confirm Password" id="cpassword" name="cpassword" value=""  data-validation="[L>=6]"/>
                        </div>
                        <div class="clearfix"></div>
                        <?php if ($task == 'changePasswordForm') { ?>
                            <!--<button class="button button-block-password button-block-upload-sm-btn"  id="button-block-password"/>Change Password</button>-->
                            <input type="submit" class="btn-login button button-block" value="Reset Password">
                        <?php } ?>
                        <?= form_close(); ?>

                    </div>
                </center>    
                <div class="field-wrap">
                </div>
            </div><!-- tab-content -->
        </div> <!-- /form -->
        <!---Total Test---->
    </div>
</div>
<!----Login  / Registraion Form-------->
<!---Footer------->
<?php $this->load->view('template/footermain', $page, $title); ?>
<?php $this->load->view('register_js', $page, $title); ?>
<!---Footer------->
