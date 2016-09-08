<div class="form-group">
    <label for="email" class="control-label col-sm-3 col-xs-12">Experience:</label>
    <div class="col-sm-8 col-xs-12">
        <select id="exp" name="exp" class="form-control">
            <option value="">--Select Experience--</option>
            <?php
            foreach ($experience as $key => $xexp) {
                echo '<option  value="' . $xexp->exp . '">' . $xexp->exp . '</option>';
            }
            ?>
        </select>
    </div>
</div>
<div class="clearfix"></div><br/>
<div class="form-group">
     <label for="email" class="control-label col-sm-3 col-xs-12">Practices:</label>
    <div class="col-sm-8 col-xs-12">
        <select id="exp" name="exp" class="form-control">
            <option value="">--Select Category--</option>
             <?php
            foreach ($category as $key => $cat) {
                echo ' <option value="' . $cat->id . '">' . $cat->categoryname . '</option>';
            }
            ?>
        </select>
        <br/>
        <h4 style="font-size:14px;">Choose UpTo 4 Areas of Practice </h4>
        <span class="error-practice"></span>
    </div>
</div>

<div class="clearfix"></div><br/><br/>

<script type="text/javascript">
    $(function () {
        $('#practice-select').multiselect({
            includeSelectAllOption: false
        });
        $('.multiselect2').removeClass('btn btn-default');
    });
</script>

<style>
.multiselect2 {
    border: 1px solid #c0c0c0;
    height: 145px;
    overflow: auto;
    padding: 10px;
    width: 10em;
}
.modal-header{
    border-bottom: 3px solid #07a3f0;
}
</style>
