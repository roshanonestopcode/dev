<script language="javascript" type="text/javascript">

    $(document).ready(function () {
        $('#errorMessage').delay(5000).fadeOut('slow');
        $('#successMessage').delay(5000).fadeOut('slow');
        $.validate({
            submit: {
                settings: {
                    form: '#asquestion',
                    clear: false,
                    inputContainer: '.field',
                    display: 'block',
                    insertion: 'prepend',
                    scrollToError: true
                },
                callback: {
                    onSubmit: function (node, formData) {
                        var text = "The following errors were found: \n";
                        var url = "<?php echo base_url(); ?>question_save"; // the script where you handle the form input.
                        var loading = $.loading();
                        $.ajax({
                            type: "POST",
                            url: url,
                            data: $("#asquestion").serialize(), // serializes the form's elements.
                            beforeSend: function () {
                                loading.open();

                            },
                            success: function (data, textStatus, jqxhr) {
                                if (data == 1) {
                                    $('#asquestion')[0].reset();
                                    $('.questionerror').html('<div class="" style="color:green;">Your Question updated successfully!</div>');
                                    location.reload();
                                }

                            }
                        });

                    }
                }

            },
        });
        $(".btn-close,.close").click(function (event) {
            $('.form-control').css('border', '');
            $('.errorMessage').html('');

        });
        $(".form-control").change(function (event) {
            $(this).css('border', '1px solid green');
            $('.errorMessage').html('');
        });

        $(".btn-question-serach").click(function (event) {
            var loading = $.loading();
            event.preventDefault();
            var url = "<?php echo base_url(); ?>question_serach"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: $("#question-search").serialize(), // serializes the form's elements.
                beforeSend: function () {
                    loading.open();

                },
                success: function (data) {
                    $('#postList').html(data);
                }
            });
        });

        $(document).on('keypress', '.txt-search', function (e) {
            if (e.keyCode == 13 && e.target.type !== 'submit') {
                e.preventDefault();
                var loading = $.loading();
                var url = "<?php echo base_url(); ?>question_serach"; // the script where you handle the form input.
                $.ajax({
                    type: "POST",
                    url: url,
                    data: $("#question-search").serialize(), // serializes the form's elements.
                    beforeSend: function () {
                        loading.open();

                    },
                    success: function (data) {
                        loading.close();
                        $('#postList').html(data);
                    }
                });
            }
        });

        $(document).on('keyup', '.txt-search', function (e) {
            e.preventDefault();
            var loading = $.loading();
            var url = "<?php echo base_url(); ?>question_serach"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: $("#question-search").serialize(), // serializes the form's elements.
                beforeSend: function () {
                    loading.open();

                },
                success: function (data) {
                    $('#postList').html(data);
                }
            });
        });

        $("#form-modal").click(function (event) {
            event.preventDefault();
            var loading = $.loading();
            var url = "<?php echo base_url(); ?>clients_forum_form"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: {
                    pdata: 'insert',
                }, // serializes the form's elements.
                beforeSend: function () {
                    loading.open();
                },
                success: function (data) {
                    loading.close();
                    $('#forum-form').modal('show');
                    $('#forum-form .modal-body').html(data);

                }
            });


        });
        $(".btn-delete").click(function (event) {
            event.preventDefault();
            var id = $(this).attr('id');
            confirm("Are you sure to delete this question");
            var loading = $.loading();
            var url = "<?php echo base_url(); ?>delete_question"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: {
                    id: id,
                }, // serializes the form's elements.
                beforeSend: function () {
                    loading.open();
                },
                success: function (data) {
                    if (data == 1) {
                        $('#vtab1_' + id).fadeOut('slow');
                        location.reload();
                    }
                }
            });
        });

        $(".delete-answer").click(function (event) {
            event.preventDefault();
            var id = $(this).attr('id');
            confirm("Are you sure to delete this answer");
            var url = "<?php echo base_url(); ?>delete_answer"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: {
                    id: id,
                }, // serializes the form's elements.
                beforeSend: function () {

                },
                success: function (data) {
                    if (data == 1) {
                        $('#revert_' + id).fadeOut('slow');

                    }
                }
            });
        });


        $(".btn-edit").click(function (event) {
            event.preventDefault();
            var id = $(this).attr('id');
            var loading = $.loading();
            var url = "<?php echo base_url(); ?>update_question"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: {
                    id: id,
                }, // serializes the form's elements.
                beforeSend: function () {
                    loading.open();
                },
                success: function (data) {
                    $('#forum-form').modal('show');
                    $('#forum-form .modal-body').html(data);

                }
            });
        });


        $(".btn-save-question").click(function (event) {
            event.preventDefault();
            var loading = $.loading();
            if ($('#category').val() == '') {
                $('#category').css('border', '1px solid #a94442');
                $('#category').focus();
                return false;
            }

            if ($('#question').val() == '') {
                $('#question').css('border', '1px solid #a94442');
                $('#question').focus();
                return false;
            }
            var url = "<?php echo base_url(); ?>question_save"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: $('#asquestion').serialize(),
                beforeSend: function () {
                    loading.open();
                },
                success: function (data) {
                    if (data == 1) {
                        $('#asquestion')[0].reset();
                        $('.questionerror').html('<div class="" style="color:green;">Your Question updated successfully!</div>');
                        location.reload();
                    }
                }
            });
        });

        $(".edit").click(function (event) {
            event.preventDefault();
            var id = $(this).attr('id');
            $('.edit_answer_' + id).hide();
            $('.span_message_' + id).hide();
            $('.update_answer_' + id).show();
            $('.text_answer_' + id).show();


        });

        $(".update").click(function (event) {
            event.preventDefault();
            var id = $(this).attr('id');
            var ans = $('.text_answer_' + id).val();
            var url = "<?php echo base_url(); ?>answer_update"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: {
                    'id': id,
                    'answer': ans,
                },
                beforeSend: function () {

                },
                success: function (data) {
                    if (data == 1) {
                        $('.span_message_' + id).html(ans);
                        $('.edit_answer_' + id).show();
                        $('.span_message_' + id).show();
                        $('.update_answer_' + id).hide();
                        $('.text_answer_' + id).hide();
                    }
                }
            });
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