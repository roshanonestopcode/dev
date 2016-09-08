<script language="javascript" type="text/javascript">
    $(document).ready(function () {
        $.validate({
            submit: {
                settings: {
                    form: 'form#frmpostcase'

                },
                callback: {
                }
            }
        });
        $(".close,.btn-close").click(function () {
            $("#frmpostcase")[0].reset();
            $('#forgetemail').removeClass('error');
            $('.form-control').removeClass('error');
            $('.error-list').hide();
        });

        function hide() {
            $('.alert-success').delay(3200).fadeOut(300);
        }
        setInterval(hide(), 5000);
        $('.jqte-test').jqte();

        // settings of status
        var jqteStatus = true;
        $(".status").click(function ()
        {
            jqteStatus = jqteStatus ? false : true;
            $('.jqte-test').jqte({"status": jqteStatus})
        });

        $(".form-control").change(function (event) {
            $(this).css('border', '1px solid #37a000');
            $('.errorMessage').html('');
        });
        $(".btn-close").click(function (event) {
            $('.form-control').css('border', '');
            $('.errorMessage').html('');
            $('#frmpostcase')[0].reset();
        });
        $(".number").keypress(function (e) {
            //if the letter is not digit then display error and don't type anything
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                return false;
            }
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