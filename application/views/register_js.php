<script language="javascript" type="text/javascript">
    $.alterValidationRules({
        rule: 'COMPLEX',
        regex: /^(?=.*\d+)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{6,16}$/,
        message: '$ must contain at least one number, one letter, one capitalized letter and between 6 - 16 characters.'
    });

    $.validate({
        submit: {
            settings: {
                form: '#register',
                clear: false,
                inputContainer: '.field',
                display: 'block',
                insertion: 'prepend',
                scrollToError: true
            },
            callback: {
                onSubmit: function (node, formData) {
                    var text = "The following errors were found: \n";
                    /* if (inputName != undefined)*/
                    var url = "<?php echo base_url(); ?>save_register"; // the script where you handle the form input.
                    var loading = $.loading();
                    $.ajax({
                        type: "POST",
                        url: url,
                        data: $("#register").serialize(), // serializes the form's elements.
                        beforeSend: function () {
                            loading.open();

                        },
                        success: function (data, textStatus, jqxhr) {
                            $("#message").html('');
                            $(".error-list").html('');
                            $(".error_email_exist").html('');
                            if (data == 3 || data == 2) {
                                $('.success').css('display', 'block');
                                $('.success').html('<div style="color:#33b5e5;"><strong>Registered Successfully Please login</strong></div>');
                                $("#register")[0].reset();
                                $(".fromfield").css('border', '');
                                setTimeout(hide(data), 2000);
                            }
                            else if (data == 4) {
                                $('#email').val('');
                                $(".success").html('<div style="color:red;background-color: snow;border: 1px dashed #d95c5c !important;margin-bottom:1em;padding:1em;" ><ul><li>Email is alredy exits!.</li></ul></div>');
                                $('#email').css('border', '2px solid #d95c5c');
                                return false;
                            }
                            else if (data == 5) {
                                $('#otpcode').val('');
                                $(".span-opt").html('<div style="color:red;">OPT does not match please try again!</div>');
                                $(".success").html('<div style="background-color: snow;border: 1px dashed #d95c5c !important;color:red;margin-bottom:1em;padding:1em;" ><ul><li>OPT does not match please try again!.</li></ul></div>');
                                $('#otpcode').css('border', '2px solid #d95c5c');
                                return false;
                            }
                        }
                    });

                }
            }

        },
    });


    $("#btnRegister").click(function (event) {
        var loading = $.loading();
        event.preventDefault();
        $(".span-opt").html('');
        $("#otp").html('');
        if ($('#name').val() == '') {
            $('#name').css('border', '1px solid #d50000');
            $('#name').focus();
            return false;
        }
        if ($('#des').val() == '') {
            $('#des').css('border', '1px solid #d50000');
            $('#des').focus();
            return false;
        }
        var isValid = isEmailValid($('#email').val());
        if (isValid == false) {
            $('#email').css('border', '1px solid #d50000');
            $('#email').focus();
            return false;
        } else {
            $('#email').css('border', '1px solid #37a000');
        }
        if ($('#city').val() == '') {
            $('#city').css('border', '1px solid #d50000');
            $('#city').focus();
            return false;
        }
        if ($('#password').val() == '') {
            $('#password').css('border', '1px solid #d50000');
            $('#password').focus();
            return false;
        }
        if ($('#mobile').val() == '') {
            $('#mobile').css('border', '1px solid #d50000');
            $('#mobile').focus();
            return false;
        }
        if ($('#otpcode').val() == '') {
            $('#otpcode').css('border', '1px solid #d50000');
            $('#otpcode').focus();
            return false;
        }
        if ($('#otpcode').val() == '') {
            $('#otpcode').css('border', '1px solid #d50000');
            $('#otpcode').focus();
            return false;
        }
        if ($('.check-container').val() == '') {
            alert('Please accept term and condtions');
            $('.check-container').focus();
            return false;
        }
        var url = "<?php echo base_url(); ?>save_register"; // the script where you handle the form input.

        $.ajax({
            type: "POST",
            url: url,
            data: $("#register").serialize(), // serializes the form's elements.
            beforeSend: function () {
                loading.open();

            },
            success: function (data) {
                $("#message").html('');
                $(".error_email_exist").html('');
                if (data == 3 || data == 2) {
                    $('.success').css('display', 'block');
                    $('.success').html('<div style="color:#33b5e5"><strong>Registered Successfully Please login</strong></div>');
                    $("#register")[0].reset();
                    $(".fromfield").css('border', '');
                    setTimeout(hide(data), 2000);
                }
                else if (data == 4) {
                    $(".error_email_exist").html('<div style="color:red;">Email already exist</div>');
                }
                else if (data == 5) {
                    $('#otpcode').val('');
                    $(".span-opt").html('<div style="color:red;">OPT does not match please try again!</div>');
                }
            }
        });


    });


    function isEmailValid(emailAdress) {
        var EMAIL_REGEXP = new RegExp('^[a-z0-9]+(\.[_a-z0-9]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,15})$', 'i');
        return EMAIL_REGEXP.test(emailAdress)
    }

    function check()
    {

        var pass1 = document.getElementById('mobile');
        var message = document.getElementById('message');
        var goodColor = "";
        var badColor = "#33b5e5";
        if (mobile.value.length != 10) {
            mobile.style.bordercolor = badColor;
            message.style.color = badColor;

            message.innerHTML = "XXXXXXXXXX 10 digits, match requested format!"
        } else {
            mobile.style.backgroundColor = goodColor;
            message.innerHTML = ""
        }
    }

    //called when key is pressed in textbox
    $(".number").keypress(function (e) {
        //if the letter is not digit then display error and don't type anything
        if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
            //display error message
            return false;
        }
    });

    $(".fa-pencil,.fa fa-times").click(function (event) {
        event.preventDefault();
        $('.emailerror').html('');
        $("#register")[0].reset();
        $("#myselect").html('');
        $(".fromfield").css('border', '');
        $(".success").html('');
        $(".success").html('');
        $(".span-opt").html('');
        $(".error_email_exist").html('');
        $('.forget-email').html('');
    });
    $("#mobile").change(function (event) {
        $("#message").hide();
    });

    function hide(data) {
        $('.success').hide();
        if (data == 3) {
            window.location.href = "<?php echo base_url(); ?>lawyer_license";

        } else {
            window.location.href = "<?php echo base_url(); ?>cunsult_register_success";
        }
    }


    $.validate({
        submit: {
            settings: {
                form: '#login',
                clear: false,
                inputContainer: '.field',
                display: 'block',
                insertion: 'prepend',
                scrollToError: true
            },
            callback: {
                onSubmit: function (node, formData) {
                    var url = "<?php echo base_url(); ?>user_login"; // the script where you handle the form input.
                    var loading = $.loading();
                    $.ajax({
                        type: "POST",
                        url: url,
                        data: $("#login").serialize(), // serializes the form's elements.
                        beforeSend: function () {
                            loading.open();

                        },
                        success: function (data) {
                            $('.emailerror').html('');
                            $("#message").html('');
                            loading.close();
                            $(".error_email_exist").html('');
                            if (data == 2) {
                                $('.loginerror').html('<div style="color:red;background-color: snow;border: 1px dashed #d95c5c !important;margin-bottom:1em;padding:1em;" ><ul style="list-style:none;"><li>Invalid account please try again!.</li></ul></div>');
                                return false;
                            } else if (data == 3) {
                                $('.loginerror').html('<div style="color:red;background-color: snow;border: 1px dashed #d95c5c !important;margin-bottom:1em;padding:1em;" ><ul style="list-style:none;"><li>Your account is under process.</li></ul></div>');
                                return false;
                            }
                            else if (data == 4) {
                                $('.loginerror').html('<div style="color:red;background-color: snow;border: 1px dashed #d95c5c !important;margin-bottom:1em;padding:1em;" ><ul style="list-style:none;"><li>Please verified your email ID!.</li></ul></div>');
                                return false;
                            }
                            else {
                                window.location.href = "<?php echo base_url(); ?>";
                            }
                        }
                    });

                }
            }

        },
    });

    $("#btnLogin").click(function (event) {
        event.preventDefault();
        var loading = $.loading();
        $('.loginerror').html('');
        if ($('#loginemail').val() == '') {
            $('#loginemail').css('border', '1px solid #d50000');
            $('#loginemail').focus();
            return false;
        }
        var isValid = isEmailValid($('#loginemail').val());
        if (isValid == false) {
            $('#loginemail').css('border', '1px solid #d50000');
            $('.emailerror').html('<div style="color:red">Invalid Email Format.</div>');
            $('#loginemail').focus();
            return false;
        } else {
            $('#loginemail').css('border', '1px solid #37a000');
        }
        if ($('#loginpassword').val() == '') {
            $('#loginpassword').css('border', '1px solid #d50000');
            $('#loginpassword').focus();
            return false;
        }
        var url = "<?php echo base_url(); ?>user_login"; // the script where you handle the form input.
        $.ajax({
            type: "POST",
            url: url,
            data: $("#login").serialize(), // serializes the form's elements.
            beforeSend: function () {
                loading.open();

            },
            success: function (data) {
                $('.emailerror').html('');
                $("#message").html('');
                loading.close();
                $(".error_email_exist").html('');
                if (data == 2) {
                    $('.loginerror').html('<div style="color:red">Invalid account please try again.</div>');
                    return false;
                } else if (data == 3) {
                    $('.loginerror').html('<div style="color:red">Your account under process.</div>');
                    return false;
                }
                else if (data == 4) {
                    $('.loginerror').html('<div style="color:red">Please verified your email ID.</div>');
                    return false;
                }
                else {
                    window.location.href = "<?php echo base_url(); ?>";
                }

            }
        });


    });
    $('.toggle').click(function () {
        // Switches the Icon
        $(this).children('i').toggleClass('fa-pencil');
        // Switches the forms  
        $('.form').animate({
            height: "toggle",
            'padding-top': 'toggle',
            'padding-bottom': 'toggle',
            opacity: "toggle"
        }, "slow");
    });

    $("#btn-genrate-opt").click(function (event) {
        event.preventDefault();
        $('.span-opt').html('');
        var loading = $.loading();
        $('#otp').html('');
        if ($('#mobile').val() == '') {
            $('#mobile').css('border', '2px solid #d95c5c');
            $('#mobile').focus();
            return false;
        }
        var mobile = $('#mobile').val();
        var PHONE_REGEXP = /^[789]\d{9}$/;
        if (!PHONE_REGEXP.test(mobile) && mobile.length != 10) {
            $('#mobile').css('border', '1px solid #d50000');
            $('#mobile').focus();
            return false;
        }
        var url = "<?php echo base_url(); ?>genrate_opt"; // the script where you handle the form input.
        $.ajax({
            type: "POST",
            url: url,
            data: {
                'mobile': mobile,
            }, // serializes the form's elements.
            beforeSend: function () {
                loading.open();

            },
            success: function (data) {
                if (data = 1) {
                    $('#otp').css('display', 'block');
                    $('#otp').html('<div class="" style="color:#37a000;">Your OTP has been send on your mobile!</div>');
                }


            }
        });
    });

    $("#otpcode").keypress(function (event) {
        $('#otp').html('');
    });


    $(document).ready(function () {
        $(".check-container").click(function () {
            var checked = $(this).is(':checked');
            if (checked) {
                $(this).val('1');
            } else {
                $(this).val('');
            }
        });
    });

    function isValidEmailAddress(emailAddress) {
        var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
        return pattern.test(emailAddress);
    }


    $(".forget-pass").click(function () {
        //$("#register")[0].reset();
        $("#login")[0].reset();
        $(".fromfield").css('border', '');
        $(".success").html('');
        $(".success").html('');
        $(".span-opt").html('');
        $(".error_email_exist").html('');
        $(".loginerror").html('');
        $('.forget-email').html('');


    });


    $("#btnResetpassword").click(function (event) {
        event.preventDefault();
        var loading = $.loading();
        $('.forget-email').html('');
        if ($('#forgetemail').val() == '') {
            $('#forgetemail').css('border', '1px solid #b92c28');
            $('#forgetemail').focus();
            return false;
        }
        if (!isValidEmailAddress($('#forgetemail').val())) {
            $('#forgetemail').css('border', '1px solid #b92c28');
            $('.forget-email').html('<div style="color:red">Invalid email Please Try again.</div>');
            return false;
        }
        var url = "<?php echo base_url(); ?>user_reset_password"; // the script where you handle the form input.
        $.ajax({
            type: "POST",
            url: url,
            data: $("#forgetpassword").serialize(), // serializes the form's elements.
            beforeSend: function () {
                loading.open();
            },
            success: function (data) {
                $('.forget-email').html('');
                if (data == 2) {
                    $('#forgetemail').css('border', '1px solid #b92c28');
                    $('.forget-email').html('<div style="color:red">Invalid User account Please enter correct email ID.</div><br/>');
                } else {
                    $('#forgetemail').css('border', '');
                    $("#forgetpassword")[0].reset();
                    $('.forget-email').html('<div style="color:#33b5e5"><strong>Please check your email address</strong></div><br/>');
                }
            }
        });
    });




    $.validate({
        submit: {
            settings: {
                form: '#forgetpassword',
                clear: false,
                inputContainer: '.field',
                display: 'block',
                insertion: 'prepend',
                scrollToError: true,
                errorClass: 'error',
                errorListClass: 'error-list',
                errorListContainer: null,
                inputContainer: null,
                        clear: 'focusin',
                        scrollToError: false
            },
            callback: {
                onSubmit: function (node, formData) {

                    var url = "<?php echo base_url(); ?>user_reset_password"; // the script where you handle the form input.
                    var loading = $.loading();
                    $.ajax({
                        type: "POST",
                        url: url,
                        data: $("#forgetpassword").serialize(), // serializes the form's elements.
                        beforeSend: function () {
                            loading.open();

                        },
                        success: function (data, textStatus, jqxhr) {
                            $('.forget-email').html('');
                            if (data == 2) {
                                $('.forget-email').html('<div style="color:red;background-color: snow;border: 1px dashed #d95c5c !important;margin-bottom:1em;padding:1em;" ><ul style="list-style:none;"><li>Invalid User account Please enter correct email ID.</li></ul></div>');
                            } else {
                                $('#forgetemail').css('border', '');

                                $('.forget-email').html('<div style="color:#33b5e5;background-color: snow;border: 1px dashed #33b5e5 !important;margin-bottom:1em;padding:1em;" ><ul style="list-style:none;"><li><strong>Please check your email address</strong></div></li></ul></div>');
                            }
                        }
                    });

                }
            }

        },
    });
    /* $(document).ready(function () {
     
     $("select").searchable({
     maxListSize: 100, // if list size are less than maxListSize, show them all
     maxMultiMatch: 50, // how many matching entries should be displayed
     width: 500,
     exactMatch: false, // Exact matching on search
     wildcards: true, // Support for wildcard characters (*, ?)
     ignoreCase: true, // Ignore case sensitivity
     latency: 200, // how many millis to wait until starting search
     warnMultiMatch: 'top {0} matches ...', // string to append to a list of entries cut short by maxMultiMatch 
     warnNoMatch: 'no matches ...', // string to show in the list when no entries match
     zIndex: 'auto'							// zIndex for elements generated by this plugin
     });
     });
     $(document).ready(function () {
     $("#value").html($("#myselect :selected").text() + " (VALUE: " + $("#myselect").val() + ")");
     $("select").change(function () {
     $("#value").html(this.options[this.selectedIndex].text + " (VALUE: " + this.value + ")");
     });
     });
     function modifySelect() {
     $("select").get(0).selectedIndex = 5;
     }
     function appendSelectOption(str) {
     $("select").append("<option value=\"" + str + "\">" + str + "</option>");
     }*/
    $("#button-block-password").click(function (event) {
        event.preventDefault();

        $('.loginerror').html('');
        if ($('#password').val() == '') {
            $('#password').css('border', '1px solid #b92c28');
            $('#password').focus();
            return false;
        }
        if ($('#cpassword').val() == '') {
            $('#cpassword').css('border', '1px solid #b92c28');
            $('#cpassword').focus();
            return false;
        }
        if ($('#password').val() != $('#cpassword').val()) {
            $('.fromfield').css('border', '1px solid #b92c28');
            $('.loginerror').html('<div style="color:red">Your password does not matach!.</div><br/>');
            return false;
        }
        var url = "<?php echo base_url(); ?>user_update_password"; // the script where you handle the form input.
        $.ajax({
            type: "POST",
            url: url,
            data: $("#resetpassword").serialize(), // serializes the form's elements.
            beforeSend: function () {
                $('.loginerror').html('<img src="<?php echo base_url(); ?>assets/images/wait24.gif"/>');
            },
            success: function (data) {
                if (data == 1) {
                    $('.loginerror').html('<div style="color:#37a000"><strong>Your password has been reset successfully Please login</strong>.</div>');
                    $("#resetpassword")[0].reset();
                    $('.fromfield').css('border', '');
                    //setTimeout(hideresetpassword(data), 2000);
                } else {
                    $('.loginerror').html('<div style="color:#33b5e5;background-color: snow;border: 1px dashed #33b5e5 !important;margin-bottom:1em;padding:1em;" ><ul style="list-style:none;"><li><strong>Please try again!.</strong></div></li></ul></div>');
                    return false;
                }
            }
        });
    });

    $.validate({
        submit: {
            settings: {
                form: '#resetpassword',
                clear: false,
                inputContainer: '.field',
                display: 'block',
                insertion: 'prepend',
                scrollToError: true
            },
            callback: {
                onSubmit: function (node, formData) {
                    var text = "The following errors were found: \n";
                    if (inputName != undefined)
                        for (var inputName in errors) {
                            for (var i = 0; i < errors[inputName].length; i++) {
                                text += errors[inputName][i] + '\n';
                            }
                        }
                    if ($('#password').val() != $('#cpassword').val()) {
                        $('.fromfield').css('border', '1px solid #b92c28');
                        $('.loginerror').html('<div style="color:red;background-color: snow;border: 1px dashed #d95c5c !important;margin-bottom:1em;padding:1em;" ><ul style="list-style:none;"><li>Password does not match please try again!.</li></ul></div>');
                        return false;
                    }
                    var url = "<?php echo base_url(); ?>user_update_password"; // the script where you handle the form input.
                    var loading = $.loading();
                    $.ajax({
                        type: "POST",
                        url: url,
                        data: $("#resetpassword").serialize(), // serializes the form's elements.
                        beforeSend: function () {
                            loading.open();

                        },
                        success: function (data, textStatus, jqxhr) {
                            if (data == 1) {
                                $('.loginerror').html('<div style="color:#33b5e5;background-color: snow;border: 1px dashed #33b5e5 !important;margin-bottom:1em;padding:1em;" ><ul style="list-style:none;"><li><strong>Your password change successfully!.</strong></div></li></ul></div>');
                                $("#resetpassword")[0].reset();
                                $('.fromfield').css('border', '');
                                //setTimeout(hideresetpassword(data), 2000);
                            } else {
                                $('.loginerror').html('<div style="color:red;background-color: snow;border: 1px dashed #d95c5c !important;margin-bottom:1em;padding:1em;" ><ul style="list-style:none;"><li>Please try again!.</li></ul></div>');
                                return false;
                            }
                        }
                    });

                }
            }

        },
    });
    function hideresetpassword() {
        $('.loginerror').html('');
    }
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#image_upload_preview').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#inputFile").change(function () {
        readURL(this);
    });
    $("#remember-me").click(function () {
        var checked = $('.chk-remember-me').is(':checked');

        if (checked == true) {
            $('.chk-remember-me').prop('checked', false);
        }
        if (checked == false) {
            $('.chk-remember-me').prop('checked', true);
        }
    });

    $(".button-block-login").click(function () {
        $("#sel-city :first-child").removeAttr('style');
        $("#sel-city :first-child").css('height', '30px;');
    });

    $(".register-consult").click(function () {
        $('#role').val(2);
    });
    $(".register-lawyer").click(function () {
        $('#role').val(3);
    });

    $(document).ready(function () {
        $(".check-container-agree").click(function () {

            var checked = $('.check-container-agree').is(':checked');
            if (checked) {
                $('.check-container-agree').val('1');
            } else {
                $('.check-container-agree').val('0');
            }
        });

        $(".check-container-subscribe").click(function () {

            var checked = $('.check-container-subscribe').is(':checked');
            if (checked) {
                $('.check-container-subscribe').val('1');
            } else {
                $('.check-container-subscribe').val('0');
            }
        });

        $("#span-check-agree").click(function () {
            if ($('.check-container-agree').is(':checked')) {
                $('.check-container-agree').prop('checked', false);
            } else {
                $('.check-container-agree').prop('checked', true);
            }
        });
        $(".span-check-subscribe").click(function () {
            if ($('.check-container-subscribe').is(':checked')) {
                $('.check-container-subscribe').prop('checked', false);
            } else {
                $('.check-container-subscribe').prop('checked', true);
            }
        });
        $(".close").click(function () {
            $("#forgetpassword")[0].reset();
            $('#forgetemail').removeClass('error');
            $('.fromfield-login').removeClass('error');
            $('.error-list').hide();
        });

        $(".fromfield,.fromfield-login").change(function () {
            $(this).removeClass('error');
        });


    });






    /**
     * Created by toplan on 15/7/11.
     */

    (function ($) {
        var config = {};

        $.loading = function (options) {

            var opts = $.extend(
                    $.loading.default,
                    options
                    );

            config = opts;
            init(opts);

            var selector = '#' + opts.id;

            $(document).on('ajaxStart', function () {
                if (config.ajax) {
                    $(selector).show();
                }
            });

            $(document).on('ajaxComplete', function () {
                setTimeout(function () {
                    $(selector).hide();
                }, opts.minTime);
            });

            return $.loading;
        };

        $.loading.open = function (time) {
            var selector = '#' + config.id;
            $(selector).show();
            if (time) {
                setTimeout(function () {
                    $(selector).hide();
                }, parseInt(time));
            }
        };

        $.loading.close = function () {
            var selector = '#' + config.id;
            $(selector).hide();
        };

        $.loading.ajax = function (isListen) {
            config.ajax = isListen;
        };

        $.loading.default = {
            ajax: true,
            //wrap div
            id: 'ajaxLoading',
            zIndex: '99999',
            //background: 'rgba(0, 0, 0, 0.7)',
            minTime: 200,
            radius: '4px',
            width: '85px',
            height: '85px',
            //loading img/gif
            imgPath: "<?php echo base_url(); ?>assets/images/icon-loading-circular-blue.gif",
            imgWidth: '45px',
            imgHeight: '45px',
            //loading text
            tip: 'loading...',
            fontSize: '14px',
            fontColor: '#fff'
        };

        function init(opts) {
            //wrap div style
            var wrapCss = 'display: none;position: fixed;top: 0;bottom: 0;left: 0;right: 0;margin: auto;padding: 8px;text-align: center;vertical-align: middle;';
            var cssArray = [
                'width:' + opts.width,
                'height:' + opts.height,
                'z-index:' + opts.zIndex,
                'background:' + opts.background,
                'border-radius:' + opts.radius
            ];
            wrapCss += cssArray.join(';');

            //img style
            var imgCss = 'margin-bottom:8px;';
            cssArray = [
                'width:' + opts.imgWidth,
                'height:' + opts.imgWidth
            ];
            imgCss += cssArray.join(';');

            //text style
            var textCss = 'margin:0;';
            cssArray = [
                'font-size:' + opts.fontSize,
                'color:' + opts.fontColor
            ];
            textCss += cssArray.join(';');

            var html = '<div id="' + opts.id + '" style="' + wrapCss + '">'
                    + '<img src="' + opts.imgPath + '" style="' + imgCss + '">'
                    + '<p style="' + textCss + '">' + opts.tip + '</p></div>';

            $(document).find('body').append(html);
        }

    })(window.jQuery || window.Zepto);

</script>