<span class="errorMessage"></span>
<div class="form-group">
    <label class="control-label col-sm-2" for="category">Category:</label>
    <div class="col-sm-10">
        <select id="category" class="form-control sel-option"  name="category" data-validation="[NOTEMPTY]" >
            <option value="">--Select Category--</option>
            <?php
            foreach ($category as $key => $cat) {
                if ($cat->id == $postjob[0]->category) {
                    $selcat = 'selected="selected"';
                } else {
                    $selcat = '';
                }
                echo ' <option ' . $selcat . ' value="' . $cat->id . '">' . $cat->categoryname . '</option>';
            }
            ?>
        </select> 
    </div> 

</div>


<input type="hidden" value="<?php echo $postjob[0]->id; ?>" id="id" name="id"/>
<div class="form-group seprated-form-row">
    <label class="control-label col-sm-2" style="margin-top: 10px;" for="category">Title:</label>
    <div class="col-sm-10">
        <input type="text" id="title" name="title" style="margin-top: 10px;" class="form-control" data-validation="[NOTEMPTY]" placeholder="Case Title" value="<?php echo $postjob[0]->title; ?>">
    </div>
</div>



<div class="form-group seprated-form-row">
    <label class="control-label col-sm-2" for="category" style="margin-top: 10px;">Description:</label>
    <div class="col-sm-10">
        <textarea placeholder="Description" style="margin-top: 10px;" rows="4" class="form-control jqte-test " name="des" id="des"><?php echo $postjob[0]->details; ?></textarea>
    </div>

</div>



<div class="form-group seprated-form-row">
    <label class="control-label col-sm-2" for="fee">Fees:</label>
    <div class="col-sm-10">
        <input type="text" id="fee" name="fee" class="form-control number" data-validation="[NOTEMPTY]" placeholder="Fee" value="<?php echo $postjob[0]->fee; ?>">
    </div>
    <div class="seprated-form-row"></div>
</div>



<div class="form-group seprated-form-row">
    <label class="control-label col-sm-2" for="city" style="margin:10px 0px;">Location:</label>
    <div class="col-sm-10" style="margin:10px 0px;">
        <select id="city" class="form-control sel-option" name="city" data-validation="[NOTEMPTY]">
            <option value="">--Select City--</option>
            <?php
            if (!empty($city)) {
                foreach ($city as $key => $city) {
                    if ($city->city_id == $postjob[0]->city) {
                        $selcity = 'selected="selected"';
                    } else {
                        $selcity = '';
                    }
                    echo '<option ' . $selcity . '  value="' . $city->city_id . '">' . $city->city_name . '</option>';
                }
            }
            ?>
        </select>
    </div>
</div>



<div class="form-group">
    <label class="control-label col-sm-2" style="margin-top:10px" for="city">Upload Attachments:</label>
    <div class="col-sm-10 "  style="margin-top:10px">
        <div class="browse_file_box">
            <input type="file" name="userfile" id="vasplus_multiple_files" multiple="multiple" style="opacity:0;-moz-opacity:0;filter:alpha(opacity:0);z-index:9999;width:90px;padding:5px;cursor:default;">
        </div>
    </div>
    <div class="seprated-form-row"></div>
</div>


<?php /* ?><?= form_close(); ?><?php */ ?>

<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/jquery-te-1.4.0.css">
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery-te-1.4.0.min.js" charset="utf-8"></script>

<script>
    $('.jqte-test').jqte();

    // settings of status
    var jqteStatus = true;
    $(".status").click(function ()
    {
        jqteStatus = jqteStatus ? false : true;
        $('.jqte-test').jqte({"status": jqteStatus})
    });

    $(".form-control").change(function (event) {
        $(this).css('border', '1px solid green');
        $('.errorMessage').html('');
    });

</script>
<style>
    .error-list {
        background-color: snow;
        border: 1px  #d95c5c !important;
        color: red;
        margin-bottom: 0em !important;
        padding: 0em !important;
        width:250px;
    }
</style>