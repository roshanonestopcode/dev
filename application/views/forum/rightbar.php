<?php
$user = $this->session->userdata('user');
?>

<div class="col-md-3">
    <!--<br/><br/>-->
    <?php
    if ($user['type'] != 'lawyer') {
        ?>
        <h2><a class="btn btn-post" id="form-modal" href="#">Ask Question</a></h2>
        <h2><a class="btn btn-post" id="" href="<?php echo base_url(); ?>my_question">My Question</a></h2>
    <?php } else { ?>
        <h2></h2>
    <?php } ?>
    <div class="list-group qa_detail2">
        <div class="clearfix"></div>
        <?php
        if (!empty($category)) {
            $ref = 1;
            foreach ($category as $key => $value) {
                $question = getLegalquestion($value->id);
                ?>
                <?php if (!empty($question)) { ?>
                    <a class="list-group-item" href="<?php echo base_url(); ?>post_legal_question/<?php echo base64_encryption($value->id); ?>">
                        <h4 class="list-group-item-heading qa_list_view"><strong><?php echo $value->categoryname; ?> ( <?php echo getCategorycount($value->id); ?> ) </strong></h4>
                    </a>
                <?php } else { ?>
                    <a class="list-group-item" href="#">
                        <h4 class="list-group-item-heading qa_list_view"><strong><?php echo $value->categoryname; ?> ( <?php echo getCategorycount($value->id); ?> )</strong> </h4>
                    </a>
                <?php } ?>
                <?php
                $ref++;
            }
        }
        ?>
    </div>
</div>

