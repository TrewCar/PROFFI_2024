let drag = null;
let sel = null;
$(document).ready(()=>{
    onDrag($(`.koika`)[0]);
    onDrag($(`.koika`)[1]);
    onDrag($(`.koika`)[2]);
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
$(`body`).on(`click`, `#remove`, function(){
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

    if(room == `none` ||koika == `none` || koika == undefined || koika == null || room == undefined || room == null){
        alert(`Выберите комнату и койку`);
        return;
    }

    onDrag(`#${room} [name=${koika}]`);
    updateSelect();
    updateKoikiSelect();
})