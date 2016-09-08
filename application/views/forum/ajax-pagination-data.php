<div class = "post-list" id = "postList">
    <?php echo $this->ajax_pagination->create_links(); ?>   
    <div class="clearfix"></div><br/>

    <?php
    if (!empty($question)) {
        foreach ($question as $key => $value) {
            ?>
            <a href="<?php base_url(); ?>post_answer/<?php echo base64_encode($value->id); ?>">
                <div id="vtab1_<?php echo $value->id; ?>">
                    <div class="row">
                        <!--<div class="col-md-2">
                        <?php if (!empty($value->profile_image)) { ?>
                                    <img class="img-circle img-responsive forum-dis-img" src="<?php echo $value->profile_image; ?>">
                        <?php } else { ?>
                                    <img class="img-circle img-responsive forum-dis-img" src="<?php echo base_url(); ?>assets/images/demo.png">
                        <?php } ?>
                        </div>-->
                        <div class="col-md-8">
                            <h4 class="forum-ques-h4 form-quesnary"><?php echo $value->question; ?></h4>
                            <p>&nbsp;</p>
                            <!---Asked By--->
                            <div class="row">
                                <div class="col-sm-12 col-xs-12" style="padding:0px;margin:0px;">
                                    <h5 style="font-size: 14px; margin-top: 0px;">Asked by <font style="color:#0276AE"><?php
                                        if ($value->anonymous == 2) {
                                            echo 'Anonymous';
                                        } else {
                                            echo $value->name;
                                        }
                                        ?></font> 
                                        on <?php echo date('d/m/Y', strtotime($value->created_on)); ?>, <?php echo date('H:i', strtotime($value->created_on)); ?> 
                                        <img src="assets/images/location-icon.png" alt="location icon" /> 
                                        City: <font style="color:#0276AE"><?php echo $value->cityname; ?></font></h5>
                                </div>
                            </div>
                            <!---End Asked By--->
                            <!-----Edit/Delete/Response/View---->
                            <div class="col-md-12">
                                <div class="row">
                                    <?php if ($user['type'] == 'client') { ?>
                                        <div class="col-md-6">
                                            <font class="response-view"><img src="<?php echo base_url(); ?>assets/images/edit-icon.png" /></font>
                                            <font style="color:#333;"><a href="#" id="<?php echo $value->id; ?>" class="btn-edit">Edit</a> &nbsp;</font>
                                            <font class="response-view"><img src="<?php echo base_url(); ?>assets/images/delete-icon.png" />&nbsp;</font>
                                            <font style="color:#333;"><a href="#" id="<?php echo $value->id; ?>" class="btn-delete">Delete</a> &nbsp;</font>
                                        </div>
                                    <?php } ?>
                                    <div class="col-md-6">
                                        <font class="response-view">Response</font>
                                        <font style="color:#333;"><?php echo getResponse($value->id); ?></font>
                                        <font class="response-view">view&nbsp;</font>
                                        <font style="color:#333;">0</font>
                                        <font style="color:#333;">

                                        &nbsp;</font>
                                    </div>
                                </div>
                            </div>
                            <!-----End --> 
                        </div>
                    </div>
                    <div style="margin-top:20px;"></div>
                </div>
            </a>

            <?php
        }
    } else {
        ?>
        <div class="row">
            <div class="alert alert-danger">
                <strong>Danger!</strong> Indicates a dangerous or potentially negative action.
            </div>
        </div>
    <?php } ?>
    <br/>
    <?php echo $this->ajax_pagination->create_links(); ?>   
</div>
<?php
$this->load->view('forum/forum_js', $page, $title);
?>
