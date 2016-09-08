<!---header----->
<?php $this->load->view('template/homeheader', $page, $title); ?>
<!---End header----->
<!-----Login / Registration Form------->
<div class="container-fluid" >
    <div class="container">
        <div class="row" id="thnaku_msg" style="margin-top:75px;">
            <center><img class="img-responsive" src="<?php echo base_url(); ?>assets/img/tick.png"></center>
            <h1> Thank you  <?php echo $_SESSION['name']; ?></h1>
            <p>Your licence is at our End now, Wait For 24 Hrs.</p>   	      
        </div>	    
    </div>
</div>
<?php $this->load->view('template/footermain', $page, $title); ?>

