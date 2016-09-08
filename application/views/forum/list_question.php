<?php
$this->load->view('template/homeheader', $page, $title);
?>
<!----Leagal questions----->
<div class="clearfix"></div>
<div class="container form-container-header">
    
</div>

<!-----Main Center Container---->
<div class="container-fluid" style="">
       <div class="col-md-12 qa_search_main">
           
<!---========================================================== QA Search Area ================================--->           
<div class="row qa_search_row">
    <h1 class="qa_foregin_trip_head">
        <?php echo $catename[0]->categoryname; ?> 
        - <font class="category_name" >Category</font> </h1>
     <?php
        foreach ($question as $key => $value) {
      ?> 
    <a href="<?php echo base_url(); ?>post_answer/<?php echo base64_encode($value->id); ?>">
        
        <h2 class="qa_search_header">
             <img class="img-circle qa_image" src="<?php echo base_url() ?>assets/images/qa.png">
            <?php echo $value->question;?> &nbsp;(<?php echo date('d/m/Y',  strtotime($value->created_on));?>)
        </h2>
    </a>  
    <?php 
    $i++;
    }
    ?>   
</div>

<!---=========================================================== End QA Search Area ================================--->  

            
    </div>
</div>
<!-----End Main Center Container---->
        
<!----Legal Questions---->