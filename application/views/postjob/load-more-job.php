<?php

if (count($details) > 0) {
    foreach ($details as $key => $value) {
        $last_loaded_id = $value->id;
        ?>
        <div style=" min-height:70px; height:auto; text-align:justify; padding:5px;border:1px solid #e2e2e2; -moz-border-bottom-colors: none;
             -moz-border-left-colors: none;
             -moz-border-right-colors: none;
             -moz-border-top-colors: none;
             background: #f9f9f9 none repeat scroll 0 0;
             border-color: #e2e2e2;
             border-image: none;
             border-style: solid;
             border-width: 1px 1px 0;
             cursor: pointer;
             font-family: Verdana,Geneva,sans-serif;
             font-size: 12px;
             padding: 20px;
             " class="row">
            <div class="col-md-2 col-xs-12">
                <?php if (!empty($value->profile_image)) { ?>
                    <img class="img-circle img-responsive forum-dis-img" src="<?php echo $value->profile_image; ?>">
                <?php } else { ?>
                    <img class="img-circle img-responsive forum-dis-img" src="<?php echo base_url() ?>assets/images/profile.png">
                <?php } ?>
            </div>
            <!---Question Area---->
            <div class="col-md-10 col-xs-12">
                <h4 style="font-weight: bold; font-size: 21px; margin-bottom: 20px;" class="forum-ques-h4"><?php echo $value->categoryname; ?></h4>
                <p style="color: rgb(2, 136, 200); font-size: 16px;font-weight:bold;" class="forum-ques-h4"><a href="view_post_job/<?php echo  base64_encryption($value->id); ?>" style="color:#0276ae;"><?php echo $value->title; ?>.</a> </p>
                <h5 style="font-size: 15px; margin-top: 2%;">Category <font style="color:#0276AE;font-weight:bold"><?php echo $value->categoryname; ?></font> 
                    Fees: <font style="color:#0276AE;font-weight:bold">Rs <?php echo number_format($value->fee, 2); ?></font>
                    <img alt="location icon" src="<?php echo base_url(); ?>assets/images/location-icon.png"> 
                    Location: <font style="color:#0276AE;font-weight:bold"><?php echo $value->cityname; ?></font></h5>
                <p style="font-weight: normal; font-size: 15px; line-height: 25px;" class="forum-ques-h4"><?php echo validStrLen($value->details, 200); ?></p>                     
            </div>                            
        </div>
        <?php
    }
    ?>
    <script type="text/javascript"> $(document).ready(function () {
            $("#last_loaded_id").val(parseInt('<?php echo $last_loaded_id; ?>'));
        });</script>
    <?php
} else {
    ?>
    <script type="text/javascript"> $(document).ready(function () {
            $("#vpb_more_button").remove();
        });</script>

    <center>
        <div  style="text-decoration:none;
              padding:10px;
              background: #EAEAEA;
              color:blue;
              text-align:center;
              border:1px solid #CCC;
              font-family: Verdana, Geneva, sans-serif;
              font-size:12px;
              cursor:pointer;" align="center"><center><font style="font-family:Verdana, Geneva, sans-serif; font-size:12px; color:gray;color:#0276ae;">No more Job  Found</font></center></div>
    </center>
    <br clear="all" />
    <?php
    exit;
}
?>
    