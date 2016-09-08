<!---header----->
<?php
$this->load->view('template/homeheader', $page, $title);
$user = $this->session->userdata('user');
?>
<!---Search Form-----> 
<div class="container form-container-header-inner-cl">
    <div id='search-box'>
        <form action="" id="search-form" method="post" target="_top">
            <input id='search-text' name='serach' placeholder='Search' type='text' class="form-search-input txt-search"/>
            <?php
            echo form_button('button', 'search', array('class' => 'search-button','id'=>'search-button'));
            ?>
        </form>

    </div>
</div>
<!---End Search Form----->

<!-----Main Center Container---->
<div class="container-fluid fluid-box-forum2">
   <!-- <div class="container forum-main-container-lg">-->
   <div class="container forum-main-container-lg">     
       
       <div style="padding-left:9%"> <h2 class="content_header">My Questions</h2></div>
        <!---Question Area--->
        <div style="border:none !important;" class="col-md-12 forum-ques">
            
            <div style="padding:10px; margin:0px;" class="row">
                <!---Legal Q & A--->
                
                <div class="col-md-1"></div>
                <div class="col-md-8" style="border:1px solid #ccc;">
                    <div class = "post-list" id = "postList" >
                        <?php echo $this->ajax_pagination->create_links(); ?>   
                        <div class="clearfix"></div><br/>
                        
                        <?php
                        if (!empty($question)) {
                            foreach ($question as $key => $value) {
                                ?>
                                <a href="<?php base_url(); ?>post_answer/<?php echo base64_encode($value->id); ?>">
                                    <div id="vtab1_<?php echo $value->id; ?>" >
                                        <div class="row">
                                            <!--<div class="col-md-2">
                                                <?php if (!empty($value->profile_image)) { ?>
                                                    <img class="img-circle img-responsive forum-dis-img" src="<?php echo $value->profile_image; ?>">
                                                <?php } else { ?>
                                                    <img class="img-circle img-responsive forum-dis-img" src="<?php echo base_url(); ?>assets/images/demo.png">
                                                <?php } ?>
                                            </div>-->
                                            <div class="col-md-12 col-sm-12 col-xs-12" >
                                                <h4 class="forum-ques-h4 form-quesnary" style=""><?php echo $value->question; ?></h4>
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
                                                              <!--<font class="response-view">
                                                                    <img src="<?php echo base_url(); ?>assets/images/edit-icon.png" />
                                                                </font>-->
                                                                <font style="color:#333;font-weight:bold"><a href="#" style="color:#333;" id="<?php echo $value->id; ?>" class="btn-edit">Edit</a> &nbsp;</font>
                                                               <!--   <font class="response-view"><img src="<?php echo base_url(); ?>assets/images/delete-icon.png" />&nbsp;</font>-->
                                                                <font style="color:#333;font-weight:bold"><a href="#" style="color:#333;" id="<?php echo $value->id; ?>" class="btn-delete">Delete</a> &nbsp;</font>
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
                                        <div style="margin-top:20px; border-bottom:1px solid #ccc"></div>
                                    </div>
                                </a>

                                <?php
                            }
                        } else {
                            ?>
                         <div class="" style="margin-top:18px;padding-bottom:18px;padding-left:5px;">
                                <div class="alert no-data-found"> 
                                No Record Found 
                            </div>
                        </div>
                            <!--<div class="row">
                                <div class="alert alert-danger">
                                    <strong>Data not Found</strong> 
                                </div>
                            </div>-->
                        <?php } ?>
                        <br/>
                        <?php echo $this->ajax_pagination->create_links(); ?>   
                    </div>
                </div>
                <!----Sidebar Category Links------>
                <?php echo $this->load->view('forum/rightbar', $page, $title); ?>
                <!---End Sidebar Category Links--->
            </div> 
            <!---End Legal Q & A--->           
        </div>
        <!---Questionary End ---->
    </div>
</div>
<div style="" role="dialog" id="forum-form" class="modal fade"> 
    <div class="modal-dialog  model-dailogue-width">
        <div class="modal-content">
            <?= form_open_multipart('forums/save', array('class' => 'asquestion', 'id' => "asquestion")); ?>
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 align="center" style="font-size:22px; font-weight:bold;color:#0288C8;" class="modal-title">Question</h4>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <button type="submit" class="submit-alert-button" data-dismiss="modal">Submit</button>
                <button type="button" class="submit-alert-button btn-close" data-dismiss="modal">Close</button>
               <!-- <button type="submit" class="btn btn-success"><i class="glyphicon glyphicon-ok"></i>Submit</button>
                <button type="button" data-dismiss="modal" class="btn btn-danger btn-close"><i class="glyphicon glyphicon-remove-sign"></i>Close</button>-->
            </div>
            <?= form_close(); ?>
        </div>
    </div>
</div>
<script>
    $(".fromfield").change(function (event) {
        event.preventDefault();
        $(this).css('border', '1px solid green');
    });
</script>
<style>
    .error-list{
    display:none !important;
    }
</style>