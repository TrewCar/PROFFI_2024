
function onTock() {
    $.ajax({
        url: `http://127.0.0.1:4914/PersonLocations`,
        dataType: `JSON`

    })
        .done(function (json) {
            let res = json.responce;
            for (let i = 0; i < res.Lenght; i++) {
                let r = res[i];
                let skud = $(`#skun-${res[i].lastSecurityPointNumber}`);
                let t = $(`<div class="circure"></div>`);
                skud.append(t);
            }
        })
        .fail(function (err) {
            console.log(err);
        })
}
setInterval(() => onTock(), 3000)