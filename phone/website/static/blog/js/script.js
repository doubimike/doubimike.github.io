$('option[value={{year}}]').attr('selected', 'selected');
$('option[value={{month}}]').attr('selected', 'selected');
$('#year_select').on('change', function(event) {
    event.preventDefault();
    var year = $('#year_select').val();
    // debugger
    $.get('/blog/getmonth?', { year: year }, function(data) {
        console.log(data)
        var back = $.parseJSON(data);
        // debugger
        var html = []
            // debugger

        for (a in back) {
            if (back[a] < 10) { x = back[a].toString() } else { x = back[a] }
            _html = '<option value="' + x + '">' + back[a] + '月</option>'
            html.push(_html)
        }
        $('#month_select').html(html.join(''));
        // console.log(html.join(''))
        $('option[value={{month}}]').attr('selected', 'selected');
    });
});

$('#getyandm').on('submit', function(event) {
    $(this).attr('action', '/blog/' + $('#year_select').val() + '/' + $('#month_select').val());
});



