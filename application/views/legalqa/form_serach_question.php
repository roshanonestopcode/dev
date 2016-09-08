<?php
$this->load->view('template/homeheader', $page, $title);
?>
<div class="clearfix"></div>
<div class="container form-container-header">
</div>
<!-----Main Center Container---->
<div class="container-fluid" style="min-height:410px;">
    <div class="col-md-12 g_search_main" >
        <div class="row g_search_row">
            <h1 class="g_foregin_trip_head">Filter Result</h1>
            <?php
            if (!empty($search)) {
                foreach ($search as $key => $value) {
                    ?>
                    <h2 class="g_search_header"><a  href="<?php echo base_url(); ?>answer_list/<?php echo base64_encryption($value->id); ?>" > <?php echo $value->categoryname ?></a></h2>  	
                    <div class="row"> 
                        <a class="g_search_header_ques"><?php echo $value->question ?></a> &#45; <font style="font-size:12px;font-weight:normal "> <?php echo date('d/m/Y', strtotime($value->created_on)) ?> </font>‎
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="g_search_view">
                                <a href="<?php echo base_url(); ?>answer_list/<?php echo base64_encryption($value->id); ?>" class="g_view_a"> 
                                    <?php echo getFirstanswer($value->id); ?>
                                </a>
                            </div>
                        </div>
                    </div>

                    <?php
                }
            } else {
                ?>
                  <div class="" style="margin-top:18px;padding-bottom:18px;padding-left:5px;">
                                <a style="color:#cc0000; font-size: 14px;">
                        <div class="alert no-data-found">
                                                    No Records found.
                                                </div>
                    </div>
            <?php } ?>

            <center>

                <a href="javascript:history.back();" class="btn backbtn">

                    <span class="glyphicon glyphicon-chevron-left"></span> Back
                </a>
            </center>

        </div>

    </div>
</div>

<div class="clearfix"></div>
<?php $this->load->view('template/footermain', $page, $title); ?>
<!-----End Main Center Container---->
