<script language="javascript" type="text/javascript">
    $(document).ready(function () {
        function hide() {
            $('.alert-success').delay(3200).fadeOut(300);
        }
        $('#myTable').DataTable();
        setInterval(hide(), 5000);
        $(".btn-search-post-job").click(function (event) {
            var loading = $.loading();
            event.preventDefault();
            /*if ($('#searchpostjob').val() == '') {
             $('#searchpostjob').css('border', '1px solid #d50000');
             $('#searchpostjob').focus();
             return false;
             }*/
            var url = "<?php echo base_url(); ?>search_post_job"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: $("#frmsearchpostjob").serialize(), // serializes the form's elements.
                beforeSend: function () {
                    loading.open();

                },
                success: function (response) {
                    $(".load-view-post-job").html(response).fadeIn(2000);
                    $(".more_contents_loading").html('View More');

                }
            });


        });

        $(".delete-post-job").click(function (event) {
            var loading = $.loading();
            event.preventDefault();
            var id = $(this).attr('id');
            var url = "<?php echo base_url(); ?>delete_post_job"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: {
                    'id': id
                }, // serializes the form's elements.
                beforeSend: function () {
                    loading.open();

                },
                success: function (response) {
                    $('.divid_' + response).fadeOut(300);
                }
            });
        });

        $(".btn_save_proposal").click(function (event) {
            var loading = $.loading();
            event.preventDefault();
            if ($('#amount').val() == '') {
                $('#amount').css('border', '1px solid #d50000');
                $('.errorMessage').html('<div style="color:#d50000">Amount is required and can not be empty.</div>');
                $('#amount').focus();
                return false;
            }
            if ($('#coverLetter').val() == '') {
                $('#coverLetter').css('border', '1px solid #d50000');
                $('.errorMessage').html('<div style="color:#d50000">Cover Letter is required and can not be empty</div>');
                $('#coverLetter').focus();
                return false;
            }
            $('.errorMessage').html('');
            var url = "<?php echo base_url(); ?>save_proposal"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: $("#frmsaveproposal").serialize(), // serializes the form's elements.
                beforeSend: function () {
                    loading.open();

                },
                success: function (response) {
                    if (response == 1) {
                        window.location.href = "<?php echo base_url(); ?>find_job";
                    }

                }
            });


        });
        $(".edit-post-job").click(function (event) {
            var id = $(this).attr('id');
            var loading = $.loading();
            event.preventDefault();
            var data = id;
            var url = "<?php echo base_url(); ?>edit_post_job"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: {
                    'id': data
                }, // serializes the form's elements.
                beforeSend: function () {
                    loading.open();

                },
                success: function (response) {
                    jQuery('#modal-edit-post-case').modal('show');
                    jQuery('#modal-edit-post-case .modal-body').html(response);
                }
            });
        });


        $(".form-control").change(function (event) {
            $(this).css('border', '2px solid green');
            $('.errorMessage').html('');
        });

        $(document).on('keypress', 'input', function (e) {
            if (e.keyCode == 13 && e.target.type !== 'submit') {
                return false;
            }
        });

        $("#searchpostjob").change(function (event) {
            $('#searchpostjob').css('border', '');
        });

        //called when key is pressed in textbox
        $(".number").keypress(function (e) {
            //if the letter is not digit then display error and don't type anything
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                return false;
            }
        });


        $(".more").toggle(function () {
            $(this).text("less..").siblings(".complete").show();
        }, function () {
            $(this).text("more..").siblings(".complete").hide();
        });
        $(".form-control").change(function (event) {
            $(this).css('border', '1px solid #37a000');
            $('.errorMessage').html('');
        });
        $(".btn-close").click(function (event) {
            $('.form-control').css('border', '');
            $('.errorMessage').html('');
          
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
                        if (inputName != undefined)
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


        $(".btn-update-job").click(function (event) {
            var loading = $.loading();
            if ($('#category').val() == '') {
                $('#category').css('border', '1px solid #d50000');
                $('.errorMessage').html('<div class="alert alert-danger">Select Category</div>');
                $('#category').focus();
                return false;
            }
            if ($('#title').val() == '') {
                $('#title').css('border', '1px solid #d50000');
                $('.errorMessage').html('<div class="alert alert-danger">Enter case Title</div>');
                $('#title').focus();
                return false;
            }
            if ($('#des').val() == '') {
                $('#des').css('border', '1px solid #d50000');
                $('.errorMessage').html('<div class="alert alert-danger">Enter case details</div>');
                $('#des').focus();
                return false;
            }
            if ($('#fee').val() == '') {
                $('#fee').css('border', '1px solid #d50000');
                $('.errorMessage').html('<div class="alert alert-danger">Enter case Fee</div>');
                $('#fee').focus();
                return false;
            }
            if ($('#city').val() == '') {
                $('#city').css('border', '1px solid #d50000');
                $('.errorMessage').html('<div class="alert alert-danger">Select your city</div>');
                $('#city').focus();
                return false;
            }

            $('.errorMessage').html('');
            $('#frmeditpostcase').submit();


        });
    });

    function Load_More_Contents()
    {
        var last_loaded_id = $("#last_loaded_id").val();
        var dataString = "last_loaded_id=" + last_loaded_id;
        var url = "<?php echo base_url(); ?>load_more_job"; // the script where you handle the form input.
        $.ajax({
            type: "POST",
            url: url,
            data: dataString,
            cache: false,
            beforeSend: function ()
            {
                $("#more_contents_loading").html('<center><div align="center"><img src="<?php echo base_url(); ?>assets/img/loadings.gif" align="absabsmiddle" title="Loading more..." /></div></center>');
            },
            success: function (response)
            {
                $("#more_tutorials_loaded").append(response).fadeIn(2000);
                $("#more_contents_loading").html('View More');
            }
        });
    }



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
            background: 'rgba(0, 0, 0, 0.7)',
            minTime: 200,
            radius: '4px',
            width: '85px',
            height: '85px',
            //loading img/gif
            imgPath: "<?php echo base_url(); ?>assets/img/ajax-loading.gif",
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