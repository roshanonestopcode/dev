<!---header----->
<?php
$this->load->view('template/homeheader', $page, $title);

if (empty($usertype)) {
    $type = $this->uri->segment(2);
    $type = base64_decryption($type);
    if (!empty($type)) {
        $type = $type;
    } else {
        $type = 'client';
    }
} else {
    $type = $usertype;
}
$this->session->set_userdata('type', $type);
?>

<!---End header----->
<!-----Registration Form------->
<div class="container-fluid" >
    <div class="container" >
        <!---Register Form ---->
        <div class="form1" >
            <ul class="tab-group">
                <h2 style="color:#07a3f0;">Register</h2>
            </ul>

              <?= form_open_multipart('save_register', array('class' => 'register', 'id' => "register")); ?>
                    <span class="success"></span>
            <div class="tab-content">
                <!-- Sign Up Form--------->
                <div id="signup" >
                    <center>Already have an account? <a href="<?php echo base_url(); ?>sign_in">Log In</a></center>
                    <br/>
                    <div class="field-wrap field">
                        <input type="text" placeholder="Full Name" name="name" id="name" class="fromfield" data-validation="[NOTEMPTY]" >
                        <input type="hidden" name="role" id="role" value="<?php echo $type; ?>"/>
                    </div>

                    <div class="field-wrap field">
                        <input type="text" id="email" placeholder="Email Address" name="email" class="fromfield" data-validation="[EMAIL]">
                        <div class="error_email_exist" id="error_email_exist"></div>
                    </div>

                    <div class="clearfix"></div>

                    <div class="field-wrap field" id="sel-city">
                        <select class="sel-drop-css" name="city" data-validation="[NOTEMPTY]" id="myselect">
                            <option value="" >--Select City--</option>
                            <?php
                            if (!empty($city)) {
                                foreach ($city as $key => $value) {
                                    echo '<option value="' . $value->city_id . '">' . $value->city_name . '</option>';
                                }
                            }
                            ?>
                        </select>
                    </div>

                    <div class="field-wrap field">
                        <input type="password" id="password" placeholder="Password" name="password" class="fromfield"  data-validation="[L>=6]" data-validation-message="$ must be at least 6 characters">
                    </div>

                    <div class="field-wrap field">
                        <input placeholder="Mobile Number" name="mobile" id="mobile" class="otp-input number "  data-validation="[L>=9]" data-validation-message="$ must be at least 10 numbers" type="text" maxlength="10"/>
                        <button name="OTP" type="button" class="btn-genrate-opt fromfield otp" id="btn-genrate-opt" >Genrate OTP</button>
                    </div>

                    <span id="message" style="width:100%;" class="clearfix"></span>
                    <span id="otp" style="width:100%;" class="clearfix"></span>


                    <div class="field-wrap field">
                        <input type="text" class="fromfield" id="otpcode" placeholder="Verify OTP Code" id="otp" name="otp" data-validation="[NOTEMPTY]" >
                        <span class="span-opt"></span>
                    </div>
                    <div class="clearfix"></div>
                    <div class="field-wrap field">
                        <div style="width:10%"><input data-validation="[NOTEMPTY]" data-validation-message="You must agree the terms and conditions" type="checkbox" name="agree" id="agree" style="float:left;" value="0" class="check-container-agree"> </div>
                        <div id="span-check-agree">Yes, I understand and agree to the Win My Case <a href="<?php echo base_url(); ?>terms_and_conditions" target="_blank">Terms of Service</a>, including the User Agreement and <a href="<?php echo base_url(); ?>privacy_policy" target="_blank">Privacy Policy</a>.</div>
                    </div>
                    <div class="field-wrap">
                        <div style="width:10%"><input type="checkbox" name="subscribe" id="subscribe" style="float:left;" class="check-container-subscribe" value="0"></div>
                        <span class="span-check-subscribe">Subscribe</span>

                    </div>

                    <!--        <div class="field-wrap">
                                <div style="width:10%"><input type="checkbox" name="subscribe" id="subscribe" style="float:left;" class="check-container-subscribe" value="0"></div>
                                <span class="span-check-subscribe">Subscribe</span>
                            </div>-->

                    <!--<button id="btnRegister" class="btn-register button button-block">Register</button>-->
                    <input type="submit" class="btn-register button button-block" value="Register">
                    <?= form_close(); ?>

                </div>
                <!----End Sign Up Form---->

                <div class="field-wrap">
                    <p class="auto-post">
                        We Won't auto Post On Your Social Network By Signing In,You  Agree To WMC <a href="" target="_blank">
                            terms &amp; Conditions
                        </a>
                    </p>
                </div>

            </div>
        </div>

        <!---End Register Form ---->

    </div>
</div>

<!----End Registraion Form-------->

<!---Footer------->
<?php $this->load->view('register_js', $page, $title); ?>
<?php $this->load->view('template/footermain', $page, $title); ?>
<!---Footer------->
<script>
    $(".fromfield,.fromfield-login,.otp-input,.sel-drop-css").change(function () {
        $(this).removeClass('error');
    });

</script>
