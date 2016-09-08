<?php
$this->load->view('template/homeheader', $page, $title);
?>

<!---Search Form-----> 
<div class="container form-container-header">
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
                <div class="col-md-9 padd-remove">
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
                                                        echo '<div class="qa">' . $i . '.&nbsp;<a href="' . base_url() . 'answer_list/' . base64_encryption($value->id) . '">' . validStrLen($value->question, 80) . '</a></div>' . "<br/>";
                                                        $i++;
                                                    }
                                                } else {
                                                    echo '<a href="#">
                                                            No Question Found 
                                                         </a>';
                                                }
                                                ?>
                                            </div>
                                        </div> 
                                    </fieldset>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="qa_readmore_div">
                                            <?php if (!empty($question)) { ?>
                                            <a class="qa_view_count" style=""><font style="top:12px;position: absolute;">2 Views</font></a>
                                                <a class="qa_readmore" href="<?php echo base_url(); ?>legal_question/<?php echo base64_encryption($value->cat_id); ?>">More</a>
                                            <?php } else { ?>
                                                <a class="qa_view_count" style=""><font style="top:12px;position: absolute;">View</font></a>
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
                <div class="col-md-3">
                    <h2><a class="btn btn-post" id="" href="<?php echo base_url(); ?>sign_in">Add Question</a></h2>
                    <div class="list-group qa_detail2">
                        <div class="clearfix"></div><br/>
                        <?php
                        if (!empty($category)) {
                            $ref = 1;
                            foreach ($category as $key => $value) {
                                $question = getLegalquestion($value->id);
                                ?>
                                <?php if (!empty($question)) { ?>
                                    <a class="list-group-item" href="<?php echo base_url(); ?>legal_question/<?php echo base64_encryption($value->id); ?>">
                                        <h4 class="list-group-item-heading qa_list_view"><?php echo $value->categoryname; ?> ( <?php echo getCategorycount($value->id); ?> ) </h4>
                                    </a>
                                <?php } else { ?>
                                    <a class="list-group-item" href="#">
                                        <h4 class="list-group-item-heading qa_list_view"><?php echo $value->categoryname; ?> ( <?php echo getCategorycount($value->id); ?> ) </h4>
                                    </a>
                                <?php } ?>
                                <?php
                                $ref++;
                            }
                        }
                        ?>
                    </div>
                </div>
                <!---End Sidebar Category Links--->
            </div> 
            <!---End Legal Q & A--->           
        </div>
        <!---Questionary End ---->
    </div>
<?php $this->load->view('template/footermain', $page, $title); ?>
</div>
