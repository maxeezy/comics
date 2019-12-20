if(document.querySelector('.reg-but')!==null){
    document.querySelector('.reg-but').onclick = function () {
        let knopka = document.querySelector('.form-reg');
        let err_field = document.querySelector('.field-1');
        if (knopka.style.display==="none"){
            while (err_field.firstChild){
                err_field.removeChild(err_field.firstChild);
            }
            knopka.style.display="block";
        }
        else{
            while (err_field.firstChild){
                err_field.removeChild(err_field.firstChild);
            }
            knopka.style.display="none";
        }
    };
}

if(document.querySelector('.aut-but')!==null){
    document.querySelector('.aut-but').onclick=function () {
        let knopka = document.querySelector('.form-autoriz');
        let err_field = document.querySelector('.field-2');
        if (knopka.style.display==="none"){
            while (err_field.firstChild){
                err_field.removeChild(err_field.firstChild);
            }
            knopka.style.display="block";
        }
        else{
            while (err_field.firstChild){
                err_field.removeChild(err_field.firstChild);
            }
            knopka.style.display="none";
        }

    };
}

if (document.querySelector('.logaut')!==null){
    document.querySelector('.logaut').onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", 'http://comics-shop/php/logout.php', true);
        xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                location.reload();
            }

        };
    };
}
function send(form) {

    var xhr = new XMLHttpRequest();

    var json = JSON.stringify({
        good_name: form.good_name.value,
        publisher_id: form.publisher_id.value,
        category_id: form.category_id.value,
        img: form.img.value,
        discription: form.discription.value,
        price: form.price.value,
        isbn: form.isbn.value

    });

    xhr.open("POST", 'http://comics-shop/php/send.php', true);
    xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
    xhr.send(json);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            let result = JSON.parse(xhr.responseText);
            console.log(result);
        }
    };
}

