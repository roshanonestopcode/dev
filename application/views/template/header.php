<?php
$user = $this->session->userdata('user');

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title><?php echo $title; ?></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <link rel="icon" href="images/icon-cww.png" type="image/gif" sizes="32x32">   
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!--<link rel="stylesheet" href="css/bootstrap.min.css">-->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/font-awesome.css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/animate.css" />
        <!---------head----------->
        <!--Login-------->
        <!---<link rel="stylesheet" href="css/login/css/reset.css">-->
        <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
        <!---Login------->
        <!---------head----------->
        <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/main.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <!--<script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>  -->
        <!---Footer------->
        <!-- login / Register---->

        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <?php addScriptsFiles($page); ?>
    </head>
    <body>
        <div class="container-fluid">
            <!---Navigation Bar----->
            <div class="container top-dis">
                <nav class="navbar navbar-default navbar-fixed-top nav-pad" style="border:0px !important; background-color:#5BC8FD;">
                    <div class="container-fluid">
                        <!---header---->
                        <div class="navbar-header">
                            <!-- toggle -->
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <!-- toggle -->
                            <a href="<?php echo base_url(); ?>" >
                                <img src="<?php echo base_url(); ?>assets/images/logo.png" class="img-responsive nav-logo" />
                            </a>

                        </div>
                        <!---header---->

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                                <li><a href="<?php echo base_url(); ?>">Forum</a></li>
                                <?php
                                if (empty($user['userId'])) {
                                    $consult_id = base64_encryption('client');
                                    $lawyer_id = base64_encryption('lawyer');
                                    ?>
                                    <li><a href="<?php echo base_url(); ?>user_register/<?php echo $consult_id; ?>" class="register-consult">Consult</a></li>
                                    <li><a href="<?php echo base_url(); ?>user_register/<?php echo $lawyer_id; ?>" class="register-lawyer">Lawyer</a></li>
                                <?php } else { ?>
                                    <li><a href="<?php echo base_url(); ?>user_profile" class="register-consult">Profile</a></li>
                                    <li><a href="<?php echo base_url(); ?>user_logout"><?php echo $user['name']; ?>(Logout)</a></li>
                                <?php } ?>
                            </ul>
                        </div>

                    </div>
                </nav>
            </div>
            <!---Navigation Bar----->

