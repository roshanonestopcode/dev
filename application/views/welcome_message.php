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
                $img = 'cancel.png';
            }
            ?>
            <center><img class="img-responsive" src="<?php echo base_url(); ?>assets/img/<?php echo $img; ?>"></center>
            <?php if (!empty($userdetails)) { ?>
                <h1> Thank you  <?php echo $userdetails[0]->name; ?></h1>
                <p>
                    <?php
                    if ($userdetails[0]->type == 'lawyer') {
                        echo 'Your licence is at our End now, Wait For 24 Hrs.';
                    }if ($userdetails[0]->type == 'client') {
                        echo 'Your ' . $userdetails[0]->email . ' is verified, please login your account.';
                    }
                    ?>

                </p>   	      
            <?php } else { ?>
                <h1 style="color:red;"> Opps!</h1>
                <p>Something wrong with the proxy server ,please contact server administration.</p>   	      
            <?php } ?>
        </div>	    
    </div>
</div>
<!----Login  / Registraion Form-------->
<!---Footer------->
<?php //$this->load->view('template/footer', $page, $title); ?>
<?php $this->load->view('register_js', $page, $title); ?>
<!---Footer------->
<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

