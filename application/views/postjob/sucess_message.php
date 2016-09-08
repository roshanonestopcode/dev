<!---header----->
<?php $this->load->view('template/homeheader', $page, $title); ?>
<!---End header----->
<!-----Login / Registration Form------->
<div class="container-fluid" >
    <div class="container">
        <div class="row" id="thnaku_msg">
            <?php
            if ($success == 1) {
                $img = 'tick.png';
            } else {
                $img = 'tick.png';
            }
            ?>
            <center><img class="img-responsive" src="<?php echo base_url(); ?>assets/img/<?php echo $img; ?>"></center>
            <p>Your proposal has been submit successfully.</p>
        </div>	    
    </div>
</div>
