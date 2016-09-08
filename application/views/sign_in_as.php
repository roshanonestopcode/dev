<?php $this->load->view('template/homeheader', $page, $title); ?>

<!---Navigation---->

<!---First Container--->
<div class="container" >
    <div class="jumbotron jumbotron-sm-box" >
        <h2 class="or-divider-h2">Login As.</h2>
        <div class="row "  style="min-height: 189px;">
            <?php
            if (empty($user['userId'])) {
                $consult_id = base64_encryption('client');
                $lawyer_id = base64_encryption('lawyer');
                ?>
                <div class="col-md-5 col-sm-6 col-xs-12 con1-col">
                    <center style="margin-top:5%;">
                        <img src="<?php echo base_url(); ?>assets/images/lawyer.png" class="img-responsive" /><br>
                        <!--<h3 class="or-divider-h3">Lawyer Login Here</h3>-->
                        <a href="<?php echo base_url(); ?>sign_in_client/<?php echo $lawyer_id; ?>" class="lawyer-buttons">Lawyer</a>
                    </center>
                </div>
                <div class="col-md-2 or-divider col-xs-hidden">OR</div>

                <div class="col-md-5 col-sm-6 col-xs-12 con1-col">
                    <center style="margin-top:5%;">
                        <img src="<?php echo base_url(); ?>assets/images/Client.png" class="img-responsive" /><br>
                        <!--- <h3 class="or-divider-h3">Client Login Here</h3>-->
                        <a href="<?php echo base_url(); ?>sign_in_client/<?php echo $consult_id; ?>" class="lawyer-buttons">Client</a>
                    </center>
                </div>
            <?php } ?>
        </div>
    </div>

</div>
<div class="footer-main-signup" >
    <?php $this->load->view('template/footermain', $page, $title); ?>
</div>
<!-----First container---->
