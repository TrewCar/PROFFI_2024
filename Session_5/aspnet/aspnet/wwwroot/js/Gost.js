$(`body`).on(`change`, `#user`, function () {
    $.ajax({
        dataType: `JSON`,
        url: `/Client/GetInfoUser?id=${$(`#user`).val()}`,
        type: `get`
    })
        .done(function (json) {
            $(`.info-user`).html("")
            $(`.info-user`).append(json);
        })
})