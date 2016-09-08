<script language="javascript" type="text/javascript">
    $(function () {
        var url = "<?php echo base_url(); ?>legalqa/search_qa_string";
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
</script>