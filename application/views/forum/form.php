<div class="signup">
<span class="questionerror"></span>
<div class="field-wrap field">
    <label for="exampleSelect1">Category</label>
    <select class="form-control fromfield fromfield-login" id="category" name="category" data-validation="[NOTEMPTY]">
        <option value="">--Select Category--</option>
        <?php
        foreach ($category as $key => $cat) {
            echo ' <option  value="' . $cat->id . '" style="padding-left:10px;">' . $cat->categoryname . '</option>';
        }
        ?>
    </select>
</div>
<div class="field-wrap field" style="padding-top:10px;">
    <label for="exampleSelect1">Anonymous</label>
    <select class="form-control fromfield fromfield-login" id="anonymous" name="anonymous">
        <?php
        $anonymous = array('1' => 'No', '2' => 'Yes');
        foreach ($anonymous as $key => $ano) {
            echo ' <option  value="' . $key . '" style="padding-left:10px;">' . $ano . '</option>';
        }
        ?>
    </select>
</div>
<div class="field-wrap field" style="padding-top:10px;">
    <label for="exampleInputPassword1">Point</label>
    <input type="text" class="form-control fromfield fromfield-login" value="" name="point" placeholder="Point" id="point" maxlength="50" data-validation="[NOTEMPTY]"/>
</div>
<div class="field-wrap field" style="padding-top:10px;">
    <label for="exampleInputPassword1">Question</label>
    <textarea type="text" class="form-control fromfield fromfield-login" id="question" maxlength="80" name="question" data-validation="[NOTEMPTY]" placeholder="Question" rows="2"></textarea>
</div>
</div>
<script>
    $(".form-control").change(function (event) {
        event.preventDefault();
        $(this).css('border', '1px solid green');
    });
</script>