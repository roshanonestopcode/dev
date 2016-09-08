<!---header----->
<?php $this->load->view('template/homeheader', $page, $title); ?>
<!---End header----->
<!-----Login / Registration Form------->
<div class="container-fluid" >
    <div class="container" style="min-height: 610px;">
        <!--<div class="row">-->
        <!---Total Test---->
        <?= form_open_multipart('upload_licence', array('class' => 'uploadlicence', 'id' => "uploadlicence")); ?>
        <div id="upload_licence" class="row" style="margin-top:75px; height:450px;">
            <h2 style="padding-left:2%;padding-top:4%;padding-bottom:2%;color:#0288C8">Upload Licence</h2>
            <div class="clearfix"></div><br/>
            <div style="color:red"><?php echo $error; ?></div>
            <div style="color:green"><?php print_r($upload_data); ?></div>
            <div class="col-md-1"></div>
            <div class="col-md-6"> 
                <div >
                    <?php if (!empty($_SESSION['img'])) { ?>
                        <img class="img-responsive button-block-upload-img" id="image_upload_preview" style="max-height:169px!important;height:100%;" src="<?php echo base_url(); ?>uploads/<?php echo $_SESSION['img']; ?>" />
                    <?php } else { ?>
                        <img class="img-responsive button-block-upload-img" id="image_upload_preview" style="max-height:169px!important;height:100%;" src="<?php echo base_url(); ?>assets/img/id-card.png" />
                    <?php } ?>
                </div>
            </div>
            <div class="col-md-5 col-xs-12">
                <div class="row upload-lic">
                    <input type="hidden" value="<?php echo $_SESSION['insertedId']; ?>" id="id" name="id"/>
                    <div class="col-md-6 col-xs-12">
                        <div class="browse_file_box">
                            <input type="file" name="userfile"  id="inputFile" style="opacity:0;-moz-opacity:0;filter:alpha(opacity:0);z-index:9999;width:90px;padding:5px;cursor:default;">
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-top:7%;">
                    <div class="col-md-6 col-xs-12">
                        <?php if (isset($_SESSION['insertedId'])) { ?>
                        <input type="submit" class="button-block-upload-sm-btn" id="button-upload-password"  value="Upload" style="margin-left:30px;"/>
                        <?php } ?>
                    </div>
                </div>
                <p>&nbsp;</p>
            </div>
            <?= form_close(); ?>
        </div>	    
        <!---Total Test---->
    </div>
</div>
<!----Login  / Registraion Form-------->
<!---Footer------->
<?php /* $this->load->view('template/footer', $page, $title); */ ?>
<?php $this->load->view('register_js', $page, $title); ?>
<!---Footer------->
