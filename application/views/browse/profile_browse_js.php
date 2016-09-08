<script language="javascript" type="text/javascript">
    $(function () {
        var url = "<?php echo base_url(); ?>browse/auto_suggest_filter";
        $('#search-text').autocomplete({
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
    $(document).ready(function () {
        $(".profile-browse-search-button").click(function (event) {
            var loading = $.loading();
            var pageurl = '<?php echo base_url(); ?>' + "browse/index?profile_search=" + $('#search-text').val();
            event.preventDefault();
            var url = "<?php echo base_url(); ?>profile_browse_serach"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: $("#profile-search-form").serialize(), // serializes the form's elements.
                beforeSend: function () {
                    loading.open();
                },
                success: function (data) {
                    $('#postList').html(data);
                    window.history.pushState({path: pageurl}, '', pageurl);
                }
            });
        });


        $(document).on('keypress', '.input-profile-serach', function (e) {

            if (e.keyCode == 13 && e.target.type !== 'submit') {
                e.preventDefault();
                var loading = $.loading();
                pageurl = '<?php echo base_url(); ?>' + "browse/index?profile_search=" + $('#search-text').val();
                var url = "<?php echo base_url(); ?>profile_browse_serach"; // the script where you handle the form input.
                $.ajax({
                    type: "POST",
                    url: url,
                    data: $("#profile-search-form").serialize(), // serializes the form's elements.
                    beforeSend: function () {
                        loading.open();

                    },
                    success: function (data) {
                        $('#postList').html(data);
                        window.history.pushState({path: pageurl}, '', pageurl);
                    }
                });
            }
        });

        /*$(document).on('keyup', 'input', function (e) {
         e.preventDefault();
         var loading = $.loading();
         var url = "<?php echo base_url(); ?>profile_browse_serach"; // the script where you handle the form input.
         $.ajax({
         type: "POST",
         url: url,
         data: $("#profile-search-form").serialize(), // serializes the form's elements.
         beforeSend: function () {
         loading.open();
         
         },
         success: function (data) {
         $('#postList').html(data);
         }
         });
         
         });*/


        $(document).on('change', '#experience', function (e) {
            e.preventDefault();
            var loading = $.loading();
            var url = "<?php echo base_url(); ?>profile_browse_serach"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: $("#drop-profile-search-form").serialize(), // serializes the form's elements.
                beforeSend: function () {
                    loading.open();
                },
                success: function (data) {
                    $('#postList').html(data);
                }
            });

        });


        $(document).on('change', '#category', function (e) {
            e.preventDefault();
            pageurl = '<?php echo base_url(); ?>' + "browse/index?profile_search=" + $(this).val();
            var str = $(this).val();
            var loading = $.loading();
            var url = "<?php echo base_url(); ?>profile_browse_serach"; // the script where you handle the form input.
            $.ajax({
                type: "POST",
                url: url,
                data: $("#drop-profile-search-form").serialize(), // serializes the form's elements.
                beforeSend: function () {
                    loading.open();
                },
                success: function (data) {
                    $('#postList').html(data);
                    $('#search-text').val(str);
                    window.history.pushState({path: pageurl}, '', pageurl);
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


    /*
     * jQuery Shorten plugin 1.1.0
     *
     * Copyright (c) 2014 Viral Patel
     * http://viralpatel.net
     *
     * Licensed under the MIT license:
     *   http://www.opensource.org/licenses/mit-license.php
     */

    /*
     ** updated by Jeff Richardson
     ** Updated to use strict,
     ** IE 7 has a "bug" It is returning undefined when trying to reference string characters in this format
     ** content[i]. IE 7 allows content.charAt(i) This works fine in all modern browsers.
     ** I've also added brackets where they weren't added just for readability (mostly for me).
     */

    (function ($) {
        $.fn.shorten = function (settings) {
            "use strict";

            var config = {
                showChars: 200,
                minHideChars: 10,
                ellipsesText: "...",
                moreText: "more",
                lessText: "less",
                onLess: function () {
                },
                onMore: function () {
                },
                errMsg: null,
                force: false
            };

            if (settings) {
                $.extend(config, settings);
            }

            if ($(this).data('jquery.shorten') && !config.force) {
                return false;
            }
            $(this).data('jquery.shorten', true);

            $(document).off("click", '.morelink');

            $(document).on({
                click: function () {

                    var $this = $(this);
                    if ($this.hasClass('less')) {
                        $this.removeClass('less');
                        $this.html(config.moreText);
                        $this.parent().prev().animate({'height': '0' + '%'}, function () {
                            $this.parent().prev().prev().show();
                        }).hide('fast', function () {
                            config.onLess();
                        });

                    } else {
                        $this.addClass('less');
                        $this.html(config.lessText);
                        $this.parent().prev().animate({'height': '100' + '%'}, function () {
                            $this.parent().prev().prev().hide();
                        }).show('fast', function () {
                            config.onMore();
                        });
                    }
                    return false;
                }
            }, '.morelink');

            return this.each(function () {
                var $this = $(this);

                var content = $this.html();
                var contentlen = $this.text().length;
                if (contentlen > config.showChars + config.minHideChars) {
                    var c = content.substr(0, config.showChars);
                    if (c.indexOf('<') >= 0) // If there's HTML don't want to cut it
                    {
                        var inTag = false; // I'm in a tag?
                        var bag = ''; // Put the characters to be shown here
                        var countChars = 0; // Current bag size
                        var openTags = []; // Stack for opened tags, so I can close them later
                        var tagName = null;

                        for (var i = 0, r = 0; r <= config.showChars; i++) {
                            if (content[i] == '<' && !inTag) {
                                inTag = true;

                                // This could be "tag" or "/tag"
                                tagName = content.substring(i + 1, content.indexOf('>', i));

                                // If its a closing tag
                                if (tagName[0] == '/') {


                                    if (tagName != '/' + openTags[0]) {
                                        config.errMsg = 'ERROR en HTML: the top of the stack should be the tag that closes';
                                    } else {
                                        openTags.shift(); // Pops the last tag from the open tag stack (the tag is closed in the retult HTML!)
                                    }

                                } else {
                                    // There are some nasty tags that don't have a close tag like <br/>
                                    if (tagName.toLowerCase() != 'br') {
                                        openTags.unshift(tagName); // Add to start the name of the tag that opens
                                    }
                                }
                            }
                            if (inTag && content[i] == '>') {
                                inTag = false;
                            }

                            if (inTag) {
                                bag += content.charAt(i);
                            } // Add tag name chars to the result
                            else {
                                r++;
                                if (countChars <= config.showChars) {
                                    bag += content.charAt(i); // Fix to ie 7 not allowing you to reference string characters using the []
                                    countChars++;
                                } else // Now I have the characters needed
                                {
                                    if (openTags.length > 0) // I have unclosed tags
                                    {
                                        //console.log('They were open tags');
                                        //console.log(openTags);
                                        for (j = 0; j < openTags.length; j++) {
                                            //console.log('Cierro tag ' + openTags[j]);
                                            bag += '</' + openTags[j] + '>'; // Close all tags that were opened

                                            // You could shift the tag from the stack to check if you end with an empty stack, that means you have closed all open tags
                                        }
                                        break;
                                    }
                                }
                            }
                        }
                        c = $('<div/>').html(bag + '<span class="ellip">' + config.ellipsesText + '</span>').html();
                    } else {
                        c += config.ellipsesText;
                    }

                    var html = '<div class="shortcontent">' + c +
                            '</div><div class="allcontent">' + content +
                            '</div><span><a href="javascript://nop/" class="morelink">' + config.moreText + '</a></span>';

                    $this.html(html);
                    $this.find(".allcontent").hide(); // Hide all text
                    $('.shortcontent p:last', $this).css('margin-bottom', 0); //Remove bottom margin on last paragraph as it's likely shortened
                }
            });

        };

    })(jQuery);
    $(document).ready(function () {
        var showChar = 200;
        var ellipsestext = "...";
        var moretext = "more";
        var lesstext = "less";
        $('.more').each(function () {
            var content = $(this).html();

            if (content.length > showChar) {

                var c = content.substr(0, showChar);
                var h = content.substr(showChar - 1, content.length - showChar);

                var html = c + '<span class="moreellipses">' + ellipsestext + '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';

                $(this).html(html);
            }

        });

        $(".morelink").click(function () {
            if ($(this).hasClass("less")) {
                $(this).removeClass("less");
                $(this).html(moretext);
            } else {
                $(this).addClass("less");
                $(this).html(lesstext);
            }
            $(this).parent().prev().toggle();
            $(this).prev().toggle();
            return false;
        });
    });
</script>