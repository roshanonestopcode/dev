<script language="javascript" type="text/javascript">
    $(document).ready(function () {
        $(".sel-drop").change(function (event) {
            event.preventDefault();
            $('.view-exp').html($(this).val());
        });

        $("#btn-genrate-opt").click(function (event) {
            event.preventDefault();
        });

    });
    $(".number").keypress(function (e) {
        //if the letter is not digit then display error and don't type anything
        if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
            //display error message
            return false;
        }
    });

    $(document).ready(function () {
        $('.view_availble_div').click(function () {
            if ($(this).prop("checked") == true) {

            }
            else if ($(this).prop("checked") == false) {

                $(".checkbox1").prop('checked', $(this).prop("checked"));
                $(".checkbox1").prop('checked', false).removeAttr('checked');

            }
        });


        $('.view_availble_div2').click(function () {
            if ($(this).prop("checked") == true) {

            }
            else if ($(this).prop("checked") == false) {

                $(".checkbox2").prop('checked', $(this).prop("checked"));
                $(".checkbox2").prop('checked', false).removeAttr('checked');
            }
        });


        $('.view_availble_div3').click(function () {
            if ($(this).prop("checked") == true) {

            }
            else if ($(this).prop("checked") == false) {

                $(".checkbox3").prop('checked', $(this).prop("checked"));
                $(".checkbox3").prop('checked', false).removeAttr('checked');

            }
        });
        $('.view_availble_div4').click(function () {
            if ($(this).prop("checked") == true) {

            }
            else if ($(this).prop("checked") == false) {
                $(".checkbox4").prop('checked', $(this).prop("checked"));
                $(".checkbox4").prop('checked', false).removeAttr('checked');

            }
        });


        $('.view_availble_div5').click(function () {
            if ($(this).prop("checked") == true) {

            }
            else if ($(this).prop("checked") == false) {
                $(".checkbox5").prop('checked', $(this).prop("checked"));
                $(".checkbox5").prop('checked', false).removeAttr('checked');

            }
        });


        $('.view_availble_div6').click(function () {
            if ($(this).prop("checked") == true) {

            }
            else if ($(this).prop("checked") == false) {
                $(".checkbox6").prop('checked', $(this).prop("checked"));
                $(".checkbox6").prop('checked', false).removeAttr('checked');
            }
        });

        $('.view_availble_div7').click(function () {
            if ($(this).prop("checked") == true) {

            }
            else if ($(this).prop("checked") == false) {
                $(".checkbox7").prop('checked', $(this).prop("checked"));
                $(".checkbox7").prop('checked', false).removeAttr('checked');

            }
        });
    });
    function ShowHideDiv(view_availble_div, view_availble_div2) {

        var availble_div = document.getElementById("availble_div");
        availble_div.style.display = view_availble_div.checked ? "block" : "none";

    }
    function ShowHideDiv2(view_availble_div2) {
        var availble_div2 = document.getElementById("availble_div2");
        availble_div2.style.display = view_availble_div2.checked ? "block" : "none";
    }
    function ShowHideDiv3(view_availble_div3) {
        var availble_div3 = document.getElementById("availble_div3");
        availble_div3.style.display = view_availble_div3.checked ? "block" : "none";
    }
    function ShowHideDiv4(view_availble_div4) {
        var availble_div4 = document.getElementById("availble_div4");
        availble_div4.style.display = view_availble_div4.checked ? "block" : "none";
    }
    function ShowHideDiv5(view_availble_div5) {
        var availble_div5 = document.getElementById("availble_div5");
        availble_div5.style.display = view_availble_div5.checked ? "block" : "none";
    }
    function ShowHideDiv6(view_availble_div6) {
        var availble_div6 = document.getElementById("availble_div6");
        availble_div6.style.display = view_availble_div6.checked ? "block" : "none";
    }
    function ShowHideDiv7(view_availble_div7) {
        var availble_div7 = document.getElementById("availble_div7");
        availble_div7.style.display = view_availble_div7.checked ? "block" : "none";
    }
</script>