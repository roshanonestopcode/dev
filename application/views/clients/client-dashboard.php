<?php
$this->load->view('template/homeheader', $page, $title);
?>
<style>
    .client-dashboard{
        min-height:470px; 
        border:1px solid #000;	
    }
    .fa-chevron-down::before {
        content: "";
        font-size: 12px !important;
    }
</style>
<!----------------Accordian Style----------------------------->
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!----------------Accordian Style End------------------------->

<div class="container forum-main-container-lg" style="min-height:600px;padding-top:90px;">
    <div class="row">

        <div class="col-md-8 col-xs-12 col-sm-8" style="">
            <h2 style="padding-bottom:0px;color:#000;">Welcome to WinMyCase, Akshay</h2>
            <div class="row client-dashboard" style="border:1px solid #ccc;padding:15% 0px;">
                <div class="col-md-4 col-sm-4 col-xs-12" style="margin-bottom:30px;">
                    <center>
                        <img src="<?php echo base_url(); ?>assets/images/1.png" class="img-responsive" />
                        <br>
                        <a data-target="#myModal1" data-toggle="modal" class="lawyer-buttons">Post A Case</a>
                    </center>
                </div>

               	<div class="col-md-4 col-sm-4 col-xs-12" style="margin-bottom:30px;">
                    <center>
                        <img src="<?php echo base_url(); ?>assets/images/2.png" class="img-responsive" />
                        <br>
                        <a class="lawyer-buttons" href="<?php echo base_url(); ?>clients">Search Lawyers</a>
                    </center>
                </div>

                <div class="col-md-4 col-sm-4 col-xs-12" style="margin-bottom:30px;">
                    <center>
                        <img src="<?php echo base_url(); ?>assets/images/34.png" class="img-responsive" />
                        <br>
                        <a class="lawyer-buttons" href="<?php echo base_url(); ?>clients">Startup&nbsp;/&nbsp;SME</a>
                    </center>
                </div>

            </div>
        </div>

        <div class="col-md-4 col-xs-12 col-sm-4">
            <h2 style="padding-bottom:0px;color:#000;">How it Works</h2>
            <div  style="min-height:415px; border:1px solid #ccc;">
                <div class="row" style="padding:0px 10px;">
                    <div class="col-md-12 col-sm-12 col-xs-12" style="min-height:470px; padding-top:15% 0px;font-size:16px;font-weight:bold; color:#000;">

                        <ul id="accordion" class="accordion">
                            <li>
                                <div class="link">
                                    How it Works<i class="fa fa-chevron-down"></i>
                                </div>
                                <ul class="submenu submenu-accordian1" id="submenu-accordian1">
                                    <li><a href="#">
                                          Lorem ipsum dolor sit amet, qui verear mnesarchum cu, tota interpretaris ut nam. 
                                          Percipit probatus eloquentiam ei nec, dolorum cotidieque sit an. Quo an fabulas omnesque, 
                                          has quidam urbanitas reprehendunt te. Atomorum appellantur est no, his ei alii ullum. 
                                          Ad mei populo eligendi. Omnium aliquid vivendum mei ad, nam cu idque dolorum delicata.
                                        </a></li>

                                </ul>   	
                            </li>	

                            <li>
                                <div class="link">
                                    How it Works<i class="fa fa-chevron-down"></i>
                                </div>
                                <ul class="submenu submenu-accordian2"  id="submenu-accordian2">
                                    <li><a href="#">
                                          Lorem ipsum dolor sit amet, qui verear mnesarchum cu, tota interpretaris ut nam. 
                                          Percipit probatus eloquentiam ei nec, dolorum cotidieque sit an. Quo an fabulas omnesque, 
                                          has quidam urbanitas reprehendunt te. Atomorum appellantur est no, his ei alii ullum. 
                                          Ad mei populo eligendi. Omnium aliquid vivendum mei ad, nam cu idque dolorum delicata.
                                        </a></li>

                                </ul>   	
                            </li>	

                            <li>
                                <div class="link">
                                    How it Works<i class="fa fa-chevron-down"></i>
                                </div>
                                <ul class="submenu submenu-accordian3" class="submenu-accordian3">
                                    <li><a href="#">
                                            Lorem ipsum dolor sit amet, qui verear mnesarchum cu, tota interpretaris ut nam. 
                                          Percipit probatus eloquentiam ei nec, dolorum cotidieque sit an. Quo an fabulas omnesque, 
                                          has quidam urbanitas reprehendunt te. Atomorum appellantur est no, his ei alii ullum. 
                                          Ad mei populo eligendi. Omnium aliquid vivendum mei ad, nam cu idque dolorum delicata.
                                        </a></li>

                                </ul>   	
                            </li>	

                            <li>
                                <div class="link">
                                    How it Works<i class="fa fa-chevron-down"></i>
                                </div>
                                <ul class="submenu submenu-accordian4" id="submenu-accordian4">
                                    <li><a href="#">
                                            Lorem ipsum dolor sit amet, qui verear mnesarchum cu, tota interpretaris ut nam. 
                                          Percipit probatus eloquentiam ei nec, dolorum cotidieque sit an. Quo an fabulas omnesque, 
                                          has quidam urbanitas reprehendunt te. Atomorum appellantur est no, his ei alii ullum. 
                                          Ad mei populo eligendi. Omnium aliquid vivendum mei ad, nam cu idque dolorum delicata.
                                        </a></li>

                                </ul>   	
                            </li>	
                        </ul>







                    </div>
                </div>
            </div>
        </div>    
    </div>
</div>




<!--<div class="container forum-main-container4">
    <div class="jumbotron jumbotron-box">
        <div class="row con1">
            <div style="padding-bottom:20px;" class="col-md-6 col-xs-12 con1-col">
                <center>
                    <img src="<?php echo base_url(); ?>assets/images/1.png" class="img-responsive" />
                    
                    <br>
                    <a data-target="#myModal1" data-toggle="modal" class="lawyer-buttons">Post A Case</a>
                </center>
            </div>
            <div style="padding-bottom:20px;" class="col-md-6 col-xs-12 con1-col">
                <center>
                      <img src="<?php echo base_url(); ?>assets/images/2.png" class="img-responsive" />
                    <br>
                    <a class="lawyer-buttons" href="<?php echo base_url(); ?>clients">Search Lawyers</a>
                    </center>
            </div>
            <br/>
            <div class="clearfix"></div>
<?php echo $this->session->flashdata('customMessage'); ?>
            <div class="clearfix"></div>
        </div>
    </div>
</div>-->


<?= form_open_multipart('save_post_case', array('class' => 'frmpostcase', 'id' => "frmpostcase")); ?>
<div style="" role="dialog" id="myModal1" class="modal fade"> 
    <div class="modal-dialog model-dailogue-width">
        <div class="modal-content">
            <div class="modal-header">
                <button data-dismiss="modal" class="close" type="button">×</button>
                <h4 align="center" style="font-size:22px; font-weight:bold;color:#0288C8;" class="modal-title">Post a Case</h4>
            </div>
            <div class="modal-body">
                <div class="" style="padding:0">
                    <div class="errorMessage"></div>
                    <div class="col-xs-12" style="padding:0px;">
                        <div class="col-xs-6">      
                            <div class="form-group">
                                <select id="category" class="form-control fromfield-login sel-option"  name="category" data-validation="[NOTEMPTY]" >
                                    <option value="">--Select Category--</option>
                                    <?php
                                    foreach ($category as $key => $cat) {
                                        echo ' <option value="' . $cat->id . '">' . $cat->categoryname . '</option>';
                                    }
                                    ?>
                                </select>     
                            </div>
                        </div>

                        <div class="col-xs-6">      
                            <div class="form-group">
                                <input type="text" id="title" name="title" class="form-control fromfield-login " placeholder="Case Title" data-validation="[NOTEMPTY]">
                            </div>
                        </div>
                    </div>
                    <div class="row" style="padding:0px;">
                        <div class="col-xs-12">     
                            <div class="form-group">
                                <textarea placeholder="Description" rows="4" class="form-control jqte-test fromfield-login " name="des" id="des" data-validation="[NOTEMPTY]"></textarea>
                            </div>
                        </div>     
                    </div>
                    <div class="col-xs-12" style="padding:0px;">
                        <div class="col-xs-6">      
                            <div class="form-group">
                                <input type="text" id="fee" name="fee" class="form-control number fromfield-login" placeholder="Fee" data-validation="[NOTEMPTY]">
                            </div>
                        </div>
                        <div class="col-xs-6">      
                            <div class="form-group">
                                <select id="city" class="form-control sel-option" name="city" data-validation="[NOTEMPTY]">
                                    <option value="">--Select City--</option>
                                    <?php
                                    if (!empty($city)) {
                                        foreach ($city as $key => $city) {
                                            echo '<option  value="' . $city->city_id . '">' . $city->city_name . '</option>';
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="browse_file_box">
                            <input type="file" name="userfile" id="vasplus_multiple_files" multiple="multiple" style="opacity:0;-moz-opacity:0;filter:alpha(opacity:0);z-index:9999;width:90px;padding:5px;cursor:default;">
                        </div>

                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="modal-footer">
                    <button class="submit-alert-button" data-dismiss="modal">Post</button>
                    <button class="submit-alert-button" data-dismiss="modal">Close</button>
               <!-- <button  class="btn btn-success btn-post-case" type="submit">   <i class="glyphicon glyphicon-ok"></i>&nbsp;Post</button>
                <button type="button" class="btn btn-danger btn-close" data-dismiss="modal">
                    <i class="glyphicon glyphicon-remove-sign"></i>&nbsp;Close</button>-->
            </div>
        </div>
    </div>
</div>
<?= form_close(); ?>



<!------Foooter------->
<!-----Categories---->
<div class="container-fluid con footer-main">
    <h2 align="center"  class="footer-main-head">Categories</h2>
    <div class="container">
        <div class="row cat-main">

            <?php
            $count = 1;
            foreach ($category as $key => $value) {
                if ($count < 40) {
                    echo ' <div class="col-md-3 col-xs-12 footer-col3"> 
					<a href="' . base_url() . "browse/index?profile_search=" . $value->categoryname . '" style="color: #fff;" class="footer-a">' . $value->categoryname . '</a>
					</div>';
                }
                $count++;
            }
            ?>

        </div>
    </div>

    <!--- Footer ---->
    <div class="container-fluid footer-main1" style="box-shadow:-1px 0 5px #282828">  
        <div class="container ft_container">

            <div class="row">

                <div class="col-md-4 col-xs-12 ft_col">

                    <div class="row" style="border-right:1px solid #363636;">

                        <div class="col-md-12 col-xs-12 col-sm-12">
                            <img src="<?php echo base_url(); ?>assets/images/email.png" class="" />
                            <font style="color:#07a3f0">contact@onestopcode.com</font>
                        </div> 
                    </div>

                </div>

                <div class="col-md-4 col-xs-12 ft_col">

                    <div class="row" style="border-right:1px solid #363636;">

                        <div class="col-md-6">
                            <a href="<?php echo base_url(); ?>terms_and_conditions">
                                Terms and conditions    
                            </a>
                        </div>

                        <div class="col-md-6">
                            <a href="<?php echo base_url(); ?>privacy_policy">
                                Privacy policy
                            </a>
                        </div>
                    </div>

                </div>

                <div class="col-md-4 col-xs-12 ft_col">

                    <div class="row">
                        <div class="col-md-12">
                            <div class="follow-us">Follow Us :-</div>
                            <a href="https://www.facebook.com/winmycase/?fref=ts" target="_blank"> <div class="social-roll-fb"></div></a>
                            <a href="https://www.facebook.com/winmycase/?fref=ts" target="_blank"> <div class="social-roll-tw"></div></a>
                            <a href="https://www.facebook.com/winmycase/?fref=ts" target="_blank"> <div class="social-roll-gplus"></div></a>
                        </div> 
                    </div>
                </div>

            </div>

        </div>

        <div class="row ">
            <div class="col-md-12  col-xs-12 col-sm-12">
                <hr class="hr-border">
                <p style="text-align: center;">
                    copyright @ <?= date("Y"); ?> win my case 
                </p>
            </div>
        </div>

    </div>
    <!--- End Footer ---->
    <!----End Footer----->


    <!----------------Accordian ------------------------->
    <script>
        $(function () {
            var Accordion = function (el, multiple) {
                this.el = el || {};
                this.multiple = multiple || false;

                // Variables privadas
                var links = this.el.find('.link');
                // Evento
                links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
            }

            Accordion.prototype.dropdown = function (e) {
                var $el = e.data.el;
                $this = $(this),
                        $next = $this.next();

                $next.slideToggle();
                $this.parent().toggleClass('open');

                if (!e.data.multiple) {
                    $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
                }
                ;
            }

            var accordion = new Accordion($('#accordion'), false);
        });
        
    </script>
 
    <script>
        $(document).ready(function(){
            
           $('#submenu-accordian1').css('display', 'block'); 
        });
    </script>
    <!------------------------------------------->

