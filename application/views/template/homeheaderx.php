<?php
$user = $this->session->userdata('user');
$action = $this->router->fetch_class();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title><?php echo $title; ?></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/slick.css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/slick-theme.css">
        <script src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
        <script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
        <?php addScriptsFiles($page); ?>
        <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/AdminLTE.min.css">
        <link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/jquery-te-1.4.0.css">
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery-te-1.4.0.min.js" charset="utf-8"></script>
        <script src="<?php echo base_url(); ?>assets/js/jquery-ui.min.js"></script>
        <script src="<?php echo base_url(); ?>assets/js/modernizr.js"></script>
    </head>
    <body class="container_one">
        <div class="se-pre-con"></div>
        <!---Navigation---->
        <!-- <div class="container top-dis">-->
        <div class="top-dis">
            <!---First Navigation Close------>      
            <nav class="navbar navbar-default navbar-fixed-top" style="border:0px !important; background-color:#fff; box-shadow:0px 0px 4px">
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
                    <!---Search Box-->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav ">    <?php
        if (empty($user['userId'])) {
            ?>  
                                <li > 
                                    <!--1-->
                                    <div class="form-group" style="margin-top: 15px;">
                                        <div class="icon-addon addon-lg">
                                            <?= form_open_multipart('browse/index', array('class' => 'profile-search', 'id' => "profile-search", 'method' => 'get')); ?>
                                            <input type="text" placeholder="Search" class="form-control" id="profile_search" name="profile_search">
                                            <span for="search" class="glyphicon glyphicon-search" rel="Search" title="Search" style="color:#07a3f0;"></span>
                                            <?= form_close(); ?>
                                        </div>
                                    </div>  
                                    <!--2-->
                                </li>
                            <?php } ?>
                        </ul>

                        <ul class="nav navbar-nav navbar-right">

                            <?php
                            if (empty($user['userId'])) {

                                $consult_id = base64_encryption('client');
                                $lawyer_id = base64_encryption('lawyer');
                                ?>
                                <li><a href="<?php echo base_url(); ?>sign_up"><span class="glyphicon glyphicon-pencil"></span> Sign Up</a></li>
                                <li><a href="<?php echo base_url(); ?>sign_in"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>

                                <li><a href="<?php echo base_url(); ?>start_up_sme">Start Up / SME's</a></li>
                                <li><a href="<?php echo base_url(); ?>legal_qa">Legal Q & A</a></li>
                                <li><a class="lawyer-buttons" href="<?php echo base_url(); ?>find_lawyer" style="color: #fff; background:#07a3f0;margin-bottom:10px;margin-right:5px;">Hire a Lawyer</a></li>
                            <?php } else { ?>
                                <!----Additional Menu Navigations----->
                                <li class="dropdown ">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="true">

                                        <p class="notification_main"> 
                                            <font class="notification">10</font>
                                            <img src="<?php echo base_url(); ?>assets/images/alarm.png"/> 
                                        </p>

                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="header">You have 10 notifications</li>
                                        <li>
                                            <!-- inner menu: contains the actual data -->
                                            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;"><ul class="menu" style="overflow: hidden; width: 100%; height: 200px;">
                                                    <li>
                                                        <a href="#">
                                                            <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                                                            page and may cause design problems
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <i class="fa fa-users text-red"></i> 5 new members joined
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <i class="fa fa-user text-red"></i> You changed your username
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class="slimScrollBar slim-scroll-manual">
                                                </div>
                                                <div class="slimScrollRail slim-scroll-manual-railway">
                                                </div>
                                            </div>
                                        </li>
                                        <li class="footer"><a href="#">View all</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown user user-menu">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="true">
                                        <?php if (!empty($user['profileimage'])) { ?>
                                            <img alt="User Image" class="user-image" src="<?php echo $user['profileimage']; ?>">
                                        <?php } else { ?>
                                            <img alt="User Image" class="user-image" src="<?php echo base_url(); ?>assets/img/user2-160x160.jpg">
                                        <?php } ?>
                                        <span class="hidden-xs"> <?php echo $user['name']; ?></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <!-- User image -->
                                        <li class="user-header">
                                            <?php if (!empty($user['profileimage'])) { ?>
                                                <img alt="User Image" class="img-circle" src="<?php echo $user['profileimage']; ?>">
                                            <?php } else { ?>
                                                <img alt="User Image" class="img-circle" src="<?php echo base_url(); ?>assets/img/user2-160x160.jpg">
                                            <?php } ?>
                                            <p>
                                                <?php echo $user['name']; ?>
                                            </p>
                                        </li>
                                        <!-- Menu Footer-->
                                        <li class="user-footer">
                                            <div class="pull-left">
                                                <a class="btn submit-button-profile" href = "<?php echo base_url(); ?>user_profile" class = "register-consult">Profile</a>
                                            </div>
                                            <div class="pull-right">
                                                <a class="btn submit-button-logout"  href = "<?php echo base_url(); ?>user_logout">Logout</a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <!--End Additional Menu Navigation----->

                            <?php } ?>
                        </ul>
                    </div> 
                </div>

                <?php
                if ($user['type'] == 'lawyer') {
                    if ($_SESSION['practice'] == 1 || $_SESSION['licence'] == 1 || $_SESSION['verify'] == 1) {
                        $this->load->view('template/licensealert', $page, $title);
                    }
                }
                ?>
            </nav>
            <!---End First Navigation Close------>
            <?php if ($user['type'] == 'client') { ?>
                <!-------Second Navigation Bar - (New)---->
                <div class="container second_nav_header">
                    <div class="masthead">
                        <nav>
                            <ul class="nav nav-justified">

                                <li class="nav-item second_nav">
                                    <a class="nav-link active second_nav_a" href="<?php echo base_url(); ?>post_job">Post a Job</a>
                                </li>

                                <li class="nav-item second_nav">
                                    <a class="nav-link second_nav_a" href="<?php echo base_url(); ?>post_my_job">My Job</a>
                                </li>

                                <li class="nav-item second_nav">
                                    <a class="nav-link second_nav_a" href="<?php echo base_url(); ?>post_accepted_job">Accepted Job</a>
                                </li>

                                <li class="nav-item second_nav">
                                    <a class="nav-link register-consult second_nav_a" href="<?php echo base_url(); ?>clients">
                                        <?php
                                        if ($user['type'] == "lawyer") {
                                            echo 'Clients';
                                        } else {
                                            echo 'Lawyers';
                                        }
                                        ?>
                                    </a>
                                </li>
                                <li class="nav-item second_nav">
                                    <a class="nav-link second_nav_a" href="<?php echo base_url(); ?>client_forum">Forum</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            <?php } else if ($user['type'] == 'lawyer') { ?>
                <div class="container second_nav_header">
                    <div class="masthead">
                        <nav>
                            <ul class="nav nav-justified">

                                <li class="nav-item second_nav">
                                    <a class="nav-link active second_nav_a" href="<?php echo base_url(); ?>find_job">Job</a>
                                </li>

                                <li class="nav-item second_nav">
                                    <a class="nav-link second_nav_a" href="<?php echo base_url(); ?>my_job">My Job</a>
                                </li>

                                <li class="nav-item second_nav">
                                    <a class="nav-link second_nav_a register-consult" href="<?php echo base_url(); ?>clients">
                                        <?php
                                        if ($user['type'] == "lawyer") {
                                            echo 'Clients';
                                        } else {
                                            echo 'Lawyers';
                                        }
                                        ?>
                                    </a>
                                </li>

                                <li class="nav-item  second_nav">
                                    <a class="nav-link second_nav_a" href="<?php echo base_url(); ?>client_forum">Forum</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            <?php } ?> 
            <!-------End Second Navigation Bar - (New)--->
        </div>
        <!---Navigation----> 
        <!---Navigation---->  
        <?php
        if ($user['type'] == "lawyer") {
            ?>
            <script>
                $(document).ready(function () {
                    $('header nav').meanmenu();
                });
                $(document).ready(function ()
                {
                    var refreshId = setInterval(function ()
                    {
                        var r = (-0.5) + (Math.random() * (1000.99));
                        var url = "<?php echo base_url(); ?>get_notifiy"; // the script where you handle the form input.
                        $.ajax({
                            type: "POST",
                            url: url,
                            data: 'getnotify', // serializes the form's elements.
                            beforeSend: function () {
                            },
                            success: function (data) {
                                var json = $.parseJSON(data);
                                $.each(json, function (idx, obj) {
                                    displaytoast(obj.title);
                                });
                                //
                            }
                        });
                    }, 30000);
                });
                function displaytoast(data) {
                    $.toast({
                        heading: 'Case',
                        showDuration: 9500,
                        hideDuration: 9500,
                        timeOut: 9500,
                        extendedTimeOut: 9500,
                        text: 'Report any <a href="#">' + data + '</a>',
                        showHideTransition: 'slide',
                        icon: 'success'
                    })
                }
            </script>
        <?php }
        ?>
        <script>
            $(window).load(function () {
                $(".se-pre-con").fadeOut("slow");
            });

        </script>

        <script>

            $('body').bind('click', function (e) {
                if ($(e.target).closest('.navbar').length == 0) {
                    // click happened outside of .navbar, so hide
                    var opened = $('.navbar-collapse').hasClass('collapse in');
                    if (opened === true) {
                        $('.navbar-collapse').collapse('hide');
                    }
                }
            });

        </script>

        <!---End Second Navigation Bar -------> 