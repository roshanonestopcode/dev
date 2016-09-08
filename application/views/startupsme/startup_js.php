<script language="javascript" type="text/javascript">

    $(document).ready(function () {
        $('#accordian-first').addClass('opened');
        $('#accordian-first').css('display', 'block');
        $(".first-price").click(function (event) {
            $('#accordian-first').addClass('opened');
            $("#accordian-first").css("display", "block");
            $("#accordian-second").css("display", "none");
            $('#accordian-third').css("display", "none");
        });

        $(".second-price").click(function (event) {

            $('#accordian-second').addClass('opened');
            $('#accordian-second').css("display", "block");
            $("#accordian-first").css("display", "none");
            $('#accordian-third').css("display", "none");
        });

        $(".third-price").click(function (event) {

            $('#accordian-third').addClass('opened');
            $('#accordian-third').css("display", "block");
            $("#accordian-second").css("display", "none");
            $('#accordian-first').css("display", "none");
        });

        $('#pricing-div-active').addClass('pricing-div-active');


        // Select Sub Plan
        $(".price-selected-container").click(function (event) {
            $('#pricing-div-active').removeClass('pricing-div-active');
            $('#pricing-div-active1').removeClass('pricing-div-active');
            $('#pricing-div-active2').removeClass('pricing-div-active');
            $('#pricing-div-active3').removeClass('pricing-div-active');
            $('#pricing-div-active4').removeClass('pricing-div-active');
            $(this).addClass('pricing-div-active');
        });

    });
</script>
