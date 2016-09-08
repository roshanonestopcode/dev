<?php
$this->load->view('template/homeheader', $page, $title);
?>
<!----Leagal questions----->
<div class="clearfix"></div>

<!-----Main Center Container---->
<div class="container-fluid" style="min-height:410px;margin-top:6%">
    <div class="col-md-12 qa_search_main">
        <div class="row qa_search_row">
            <h1 class="qa_foregin_trip_head">
                <?php echo $catename[0]->categoryname; ?> 
                - <font class="category_name" >Category</font> </h1>
            <?php
            if (!empty($question)) {
                foreach ($question as $key => $value) {
                    ?> 
                    <a href="<?php echo base_url(); ?>answer_list/<?php echo base64_encryption($value->id); ?>">

                        <h2 class="qa_search_header">
                            <img class="img-circle qa_image" src="<?php echo base_url() ?>assets/images/qa.png">
                            <?php echo $value->question; ?> &nbsp;(<?php echo date('d/m/Y', strtotime($value->created_on)); ?>)
                        </h2>
                    </a>  
                    <?php
                    $i++;
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
        </div>

        <center>

            <a href="javascript:history.back();" class="btn backbtn">

                <span class="glyphicon glyphicon-chevron-left"></span> Back
            </a>
        </center>

    </div>
</div>
<div class="clearfix"></div>

<div class="footer-main-signup" >
    <?php $this->load->view('template/footermain', $page, $title); ?>
    
</div>

<!-----End Main Center Container---->

<!----Legal Questions---->