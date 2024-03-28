let drag = null;
let sel = null;
$(document).ready(()=>{
    let json = JSON.parse($(`#data`).html());
    for (let i = 0; i < json.length; i++) {
        onDrag(json[i]);
    }
    $(`.koika`)
    .on(`dragstart`, function(event){
        drag = event.currentTarget;
    })
    .on(`dragover`, function(event){
        event.preventDefault();
    }).on(`drop`, function(event){
        event.preventDefault();
        if($(this).hasClass(`ocup`) || drag == null || !$(drag).hasClass(`ocup`)){
            return;
        }


        $.ajax({
            url: `/CheckClients/ReplaceKoika`,
            data: {
                set_koika: `#${$(this).parent().parent().attr(`id`)} [name=${$(this).attr(`name`)}]`,
                unset_koika: `#${$(drag).parent().parent().attr(`id`)} [name=${$(drag).attr(`name`)}]`
            }
        })
        .done(function () { });

        onDrag(this);
        offDrag(drag);
        drag = null;
    });
});
function openContext(event){
    sel = this;
    event.preventDefault();
    $(`.context_menu`).show().css({
        left: event.pageX,
        top: event.pageY
    });
}
$(document).on(`click`, function(){
    $(`.context_menu`).hide();
    sel = null;
});
$(`body`).on(`click`, `#remove`, function () {
    let id_room = $(sel).parent().parent().attr(`id`);
    let id_koika = $(sel).attr(`name`);
    $.ajax({
        url: `/CheckClients/RemoveKoika`,
        data: {
            set_koika: `#${id_room} [name=${id_koika}]`
        }
    })
        .done(function () { });
    offDrag(sel);
    updateSelect();
    updateKoikiSelect();
});

function onDrag(element){
    $(element).addClass(`ocup`).attr(`draggable`, true).on(`contextmenu`,openContext);
}

function offDrag(element){
    $(element).removeClass(`ocup`).attr(`draggable`, false).off(`contextmenu`);
    updateSelect();
    updateKoikiSelect();
}

function updateSelect(){
    $(`.content_td`).each(function(){
        let label = $(this).children(`label`);
        let text = $(label).html();
        let id = $(this).attr(`id`);
        $(`#sel_koiki`).append(`<option value="${id}">${text}</option>`)
    });
}
function updateKoikiSelect(){
    let val = $(`#sel_koiki`).val();
    $(`#sel_koika`).html(` `);
    $(`#${val} .koiki .koika`).each(function(){
        let id_val = $(this).attr(`name`);
        let html = $(this).html();
        if($(this).hasClass(`ocup`)){
            return;
        }
        $(`#sel_koika`).append(`<option value="${id_val}">${html}</option>`);
    })
}
$(`body`).on(`change`, `#sel_koiki`, function(){
    updateKoikiSelect();
});
updateSelect();

$(`body`).on(`click`, `#insert`, function(){
    let room = $(`#sel_koiki`).val();
    let koika = $(`#sel_koika`).val();

    $.ajax({
        url: `/CheckClients/CreateKoika`,
        data: {
            set_koika: `#${room} [name=${koika}]`
        }
    })
        .done(function () { });
    if(room == `none` ||koika == `none` || koika == undefined || koika == null || room == undefined || room == null){
        alert(`Выберите комнату и койку`);
        return;
    }

    onDrag(`#${room} [name=${koika}]`);
    updateSelect();
    updateKoikiSelect();
})