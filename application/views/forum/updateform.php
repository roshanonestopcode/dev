<span class="questionerror"></span>
<fieldset class="form-group">
    <label for="exampleSelect1">Category</label>
    <input type="hidden" id="id" name="id" value="<?php echo $question[0]->id ?>"/>
    <select class="form-control fromfield" id="category" name="category">
        <option value="">--Select Category--</option>
        <?php
        foreach ($category as $key => $cat) {
            if ($cat->id == $question[0]->id) {
                $selc = 'selected="selected"';
            } else {
                $selc = '';
            }
            echo ' <option ' . $selc . ' value="' . $cat->id . '">' . $cat->categoryname . '</option>';
        }
        ?>
    </select>
</fieldset>
<fieldset class="form-group" style="padding-top:10px;">
    <label for="exampleSelect1">Anonymous</label>
    <select class="form-control fromfield" id="anonymous" name="anonymous">
        <?php
        $anonymous = array('1' => 'No', '2' => 'Yes');
        foreach ($anonymous as $key => $ano) {
            if ($key == $question[0]->anonymous) {
                $asel = 'selected="selected"';
            } else {
                $asel = '';
            }
            echo ' <option ' . $asel . ' style="padding-left:10px;" value="' . $key . '">' . $ano . '</option>';
        }
        ?>
    </select>
</fieldset>
<fieldset class="form-group" style="padding-top:10px;">
    <label for="exampleInputPassword1">Point</label>
    <input type="text" class="form-control fromfield" value="<?php echo $question[0]->point;?>" name="point" id="point" maxlength="50"/>
</fieldset>
<fieldset class="form-group" style="padding-top:10px;">
    <label for="exampleInputPassword1">Question</label>
    <textarea type="text" class="form-control fromfield" id="question" maxlength="80" name="question" placeholder="Question" rows="2"><?php echo $question[0]->question; ?></textarea>
</fieldset>

<script>
    $(".form-control").change(function (event) {
        event.preventDefault();
        $(this).css('border', '1px solid green');
    });
</script>