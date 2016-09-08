<script language="javascript" type="text/javascript">
    $(function () {
        $('#contact-form').validator();
        $('#contact-form').on('submit', function (e) {
            if (!e.isDefaultPrevented()) {
                var url = "<?php echo base_url(); ?>send_msg_legal_assistance";
                var loading = $.loading();
                $.ajax({
                    type: "POST",
                    url: url,
                    data: $(this).serialize(),
                    beforeSend: function () {
                        loading.open();
                    },
                    success: function (data)
                    {
                        var messageAlert = 'alert-' + data.type;
                        var messageText = data.message;

                        var alertBox = '<div class="alert ' + messageAlert + ' alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>' + messageText + '</div>';
                        if (messageAlert && messageText) {
                            $('#contact-form').find('.messages').html(alertBox);
                            $('#contact-form')[0].reset();
                        }
                    }
                });
                return false;
            }
        })
    });
    $(".number").keypress(function (e) {
        //if the letter is not digit then display error and don't type anything
        if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
            //display error message
            return false;
        }
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
            // background: 'rgba(0, 0, 0, 0.7)',
            minTime: 200,
            radius: '4px',
            width: '85px',
            height: '85px',
            //loading img/gif
            imgPath: "<?php echo base_url(); ?>assets/images/icon-loading-circular-blue.gif",
            imgWidth: '45px',
            imgHeight: '45px',
            //loading text
            tip: '',
            fontSize: '14px',
            //fontColor: '#fff'
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