<?php
$this->load->view('template/homeheader', $page, $title);
?>

<!---Search Form-----> 
<div class="container form-container-header-inner">
    <div id='search-box'>
        <form action="<?php echo base_url(); ?>search_post_question" id="search-form" method="post" target="_top">
            <input id='search-text' name='serach' placeholder='Search' type='text' class="form-search-input"/>
            <button id='search-button' type='submit' class="search-button">                     
                <span>Search</span>
            </button>
        </form>

    </div>
</div>
<!---End Search Form----->
<div class="container-fluid fluid-box-forum2">
    <div class="container forum-main-container-lg">
        <!---Question Area--->
        <div style="border:none !important;" class="col-md-12 forum-ques">
            <div style="padding:10px; margin:0px;" class="row">
                <!---Legal Q & A--->
                <h2 class="content_header">Legal Q/A</h2>
                <div class="col-md-9">
                    <div class="row row-qa">           
                        <?php
                        if (!empty($category)) {
                            $href = 1;
                            foreach ($category as $key => $value) {
                                ?>
                                <div class="col-md-6 col-sm-6 col-xs-12" id="<?php echo $href; ?>">
                                    <fieldset>
                                        <legend class="legand">
                                            <?php echo $value->categoryname; ?>
                                        </legend>
                                        <span  class="qa_count" title="Total Q/A">Total Q/A: <?php
                                            echo getLegalquestiontotal($value->id);
                                            ?>
                                        </span>
                                        <div class="qa_col"> 
                                            <div class="qa_iner">
                                                <?php
                                                $question = getLegalquestion($value->id);
                                                ?>
                                                <?php
                                                if (!empty($question)) {
                                                    $i = 1;
                                                    foreach ($question as $key => $value) {
                                                        echo '<div class="qa">' . $i . '.&nbsp;<a href="' . base_url() . 'post_answer/' . base64_encode($value->id) . '">' . validStrLen($value->question, 80) . '</a></div>' . "<br/>";
                                                        $i++;
                                                    }
                                                } else {
                                                    echo '<a href="#" style="color:#ff0000"> 
                                                            NO Question Found
                                                            </a>';
                                                }
                                                ?>
                                            </div>
                                        </div> 
                                    </fieldset>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="qa_readmore_div">
                                            <?php if (!empty($question)) { ?>
                                            <a class="qa_view_count"><font style="padding-top:10px;">2 Visits</font></a>
                                                <a class="qa_readmore" href="<?php echo base_url(); ?>post_legal_question/<?php echo base64_encryption($value->cat_id); ?>">More</a>
                                            <?php } else { ?>
                                                <a class="qa_view_count"style="padding-top:10px;"><font style="padding-top:10px;">No View</font></a>
                                                <div class="qa_readmore" >More</div>
                                            <?php } ?>
                                        </div>
                                    </div>  
                                </div>

                                <?php
                                $href++;
                            }
                        }
                        ?>
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
<?php $this->load->view('template/footermain', $page, $title); ?>
<!-----End Main Center Container---->    
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
                <!--<button type="submit" class="btn btn-success"><i class="glyphicon glyphicon-ok"></i>Submit</button>
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