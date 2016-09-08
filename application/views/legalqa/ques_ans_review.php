<?php
$this->load->view('template/homeheader', $page, $title);

?>
<div class="clearfix"></div>
<div class="container form-container-header">
    
</div>

<!-----Main Center Container---->
<div class="container-fluid" style="">
       <div class="col-md-12 qa_search_main">
           
<!---========================================================== Google Search Area ================================--->           

<div class="row qa_search_row">
    <h1 class="qa_foregin_trip_head">Filter Question/Answers with Reviews</h1>
    <h2 class="gqa_search_header">Category Name 1</h2>  	
    <div class="row"> 
       <a class="qa_search_header_ques">Legal Question</a> &#45; <font style="font-size:12px;font-weight:normal "> ‎1 hour ago</font>‎
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="qa_search_view">
                    <a href="<?php echo base_url();?>answer_list" class="g_view_a"> Lorem Ipsum has been the industry's standard dummy text ever since the 1500s  
                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s  
                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s </a>
                </div>
        </div>
    </div>
</div>



<div class="row qa_search_row">
    <h2 class="gqa_search_header">Category Name 2</h2>  	
        <div class="row"> 
       <a class="qa_search_header_ques">Legal Question</a> &#45; <font style="font-size:12px;font-weight:normal "> ‎1 hour ago</font>‎
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="qa_search_view">
                    <a href="<?php echo base_url();?>answer_list" class="g_view_a"> Lorem Ipsum has been the industry's standard dummy text ever since the 1500s  
                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s  
                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s </a>
                </div>
        </div>
    </div>
</div>



<!---=========================================================== End Google Search Area ================================--->  

            
    </div>
</div>
<div style="bottom:0px; position: absolute;width: 100%;">
    <?php $this->load->view('template/footermain', $page, $title); ?>
</div>
<!-----End Main Center Container---->
        