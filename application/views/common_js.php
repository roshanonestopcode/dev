<script language="javascript" type="text/javascript">
    var practice = "<?php echo $_SESSION['practice']; ?>";
    var licence = "<?php echo $_SESSION['licence']; ?>";
    var verify = "<?php echo $_SESSION['verify']; ?>";


    $(document).ready(function () {

        if (practice == 1 && licence!=1) {
            var loading = $.loading();
            var url = "<?php echo base_url(); ?>client_exp_practice"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: {
                    'practice': 'practice'
                }, // serializes the form's elements.
                beforeSend: function () {
                    loading.open();
                },
                success: function (data) {
                    $('.alert-form').modal('show');
                    $('.alert-form .modal-body').html(data);
                }
            });
        }

        if (licence == 1 && practice != 1 ) {
            $('.licence-form').modal('show');

        }
        if (verify == 1) {
            $('.verify-form').modal('show');

        }

        $("#btn-save-practice-exp").click(function (event) {
            event.preventDefault();
            var loading = $.loading();

            if ($('#exp').val() == '') {
                $('#exp').css('border', '1px solid #a94442');
                $('#exp').focus();
                return false;
            }
            if ($('#practice-select').val() == '') {
                $('#practice-select').css('border', '1px solid #a94442');
                $('#practice-select').focus();
                return false;
            }
            var url = "<?php echo base_url(); ?>save_practice_exp"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: $("#frmpracticeexp").serialize(), // serializes the form's elements.
                beforeSend: function () {
                    loading.open();
                },
                success: function (data) {
                    if (data == 2) {
                        $('.error-practice').html('<div style="color:red;">Please Choose UpTo 4 Areas of Practice</div>');
                        return false;
                    } else if (data == 3) {
                        $('.error-practice').html('<div style="color:red;">Please Choose UpTo 4 Areas of Practice</div>');
                        return false;
                    }
                    else if (data == 1) {
                        location.reload();
                    }
                }
            });
        });
    });
    $(function () {
        var url = "<?php echo base_url(); ?>browse/auto_suggest_filter";
        $('#profile_search').autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: url,
                    dataType: "json",
                    data: {
                        term: request.term,
                        type: 'data_type',
                        row_num: 1
                    },
                    success: function (data) {
                        response($.map(data, function (item) {
                            var code = item.split("|");
                            return {
                                label: code[0],
                                value: code[0],
                                data: item
                            }
                        }));
                    }
                });
            },
            minLength: 2,
            search: function (event, ui) {
                didSelect = false;
                return true;
            },
            select: function (event, ui) {
                if (ui.item) {
                    didSelect = true;
                    //my_select_function(ui.item);
                }
            }
        }).keypress(function (e) {
            if (e.keyCode == 13) {
                /*if (!didSelect) {
                 my_search_function($("#search").val());
                 }*/
            }
        });

    });

    $(".form-control").change(function (event) {
        event.preventDefault();
        $(this).css('border', '1px solid green');
        $('.form-control').css('border', '1px solid green');
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
            //imgPath: "<?php echo base_url(); ?>assets/img/ajax-loading.gif",
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
