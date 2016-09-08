<?php
$this->load->view('template/homeheader', $page, $title);
?>
<link href='https://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>

<div class="container" style="height: 600px;">
    <div class="jumbotron jumbotron-sm-box">
        <h2 class="content_header">WMC Legal Assistance</h2>
        <div class="clearfix"></div>
        <div class="body-content text-justify">
             <p class="wmc_info_data">
                Our vision is to spread legal awareness and provide a platform
                where every person can avail quality legal support.
                We want to target the general public who hesitates to consult a legal professional.
            </p>
        </div>
        <div class="col-lg-12">
            <div class="col-md-6">
                <div id='gmap'>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3430.329283584632!2d76.78662701465373!3d30.70914209382119!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390fecf0794bd4b9%3A0xff1ef2cb93a9e792!2sOne+Stop+Code!5e0!3m2!1sen!2sin!4v1472021552030" width="600" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col-md-6">
                <form id="contact-form" method="post" action="#" role="form">
                    <div class="messages"></div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input id="form_name" type="text" name="name" class="form-control" placeholder="Please enter your full name *" required="required" data-error="full name is required.">
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <input id="form_email" type="email" name="email" class="form-control" placeholder="Please enter your email *" required="required" data-error="Valid email is required.">
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input id="form_phone" type="tel" name="phone" class="form-control number" placeholder="Please enter your phone" maxlength="10">
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <textarea id="form_message" name="message" class="form-control" placeholder="Message for me *" rows="4" cols="12" required="required" data-error="Please,leave us a message."></textarea>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <input type="submit" class="sme-button disabled" value="Send message">
                </form>
            </div>
        </div><!-- /.8 -->


    </div>
</div>
<div style="margin-bottom: 0px !important; padding-top:20px; ">
    <?php $this->load->view('template/footermain', $page, $title); ?>

</div>
