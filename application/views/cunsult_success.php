<!---header----->
<?php $this->load->view('template/homeheader', $page, $title); ?>
<!---End header----->
<!-----Login / Registration Form------->
<div class="container-fluid" >
    <div class="container">
        <div class="row" id="thnaku_msg">
            <center><img class="img-responsive" src="<?php echo base_url(); ?>assets/img/tick.png"></center>
            <h1>Thank you  <?php echo $_SESSION['name']; ?></h1>
            <p>Please verified your email account.</p>   	      
        </div>	    
    </div>
</div>
<!----Login  / Registraion Form-------->
<!---Footer------->
<?php //$this->load->view('template/footer', $page, $title); ?>
<?php $this->load->view('template/footermain', $page, $title); ?>
<?php $this->load->view('register_js', $page, $title); ?>
<!---Footer------->
<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

