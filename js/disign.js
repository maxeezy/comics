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