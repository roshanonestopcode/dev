<?php
$user = $this->session->userdata('user');
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
        <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">
        <link href="assets/css/main.css" rel="stylesheet"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <?php addScriptsFiles($page); ?>
    </head>
    <body class="container_one">
        <!---Navigation---->
        <div class="container top-dis">
            <nav class="navbar navbar-default navbar-fixed-top" style="border:0px !important; background-color:#0288C8;">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>  
                        <a href="<?php echo base_url(); ?>" >
                            <img src="<?php echo base_url(); ?>assets/images/logo.png" class="img-responsive nav-logo" />
                        </a>

                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <?php
                            if (empty($user['userId'])) {
                                $consult_id = base64_encryption('client');
                                $lawyer_id = base64_encryption('lawyer');
                                ?>
                                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                                <li><a href="<?php echo base_url(); ?>">Forum</a></li>
                                <li><a href="<?php echo base_url(); ?>user_register/<?php echo $consult_id; ?>" class="register-consult">Consult</a></li>
                                <li><a href="<?php echo base_url(); ?>user_register/<?php echo $lawyer_id; ?>" class="register-lawyer">Lawyer</a></li>
                            <?php } else { ?>
                                <li>
                                    <a href="<?php echo base_url(); ?>clients" class="register-consult">
                                        <?php
                                        if ($user['type'] == "lawyer") {
                                            echo 'Clients';
                                        } else {
                                            echo 'Lawyers';
                                        }
                                        ?>

                                    </a>
                                </li>
                                <li><a href = "<?php echo base_url(); ?>user_profile" class = "register-consult">Profile</a></li>
                                <li><a href = "<?php echo base_url(); ?>user_logout"><?php echo $user['name'];
                                        ?>(Logout)</a></li>
                            <?php } ?>
                        </ul>
                    </div> 
                </div>
            </nav>
        </div>
        <!---Navigation---->  