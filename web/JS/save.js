Handsontable.Dom.addEvent(save, 'click', function() {
    // save all cell's data
    ajax('scripts/json/save.json', 'GET', JSON.stringify({data: hot.getData()}), function (res) {
        var response = JSON.parse(res.response);

        if (response.result === 'ok') {
            exampleConsole.innerText = 'Data saved';
        }
        else {
            exampleConsole.innerText = 'Save error';
        }
    });
});