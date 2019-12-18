function otprav(form) {
    var xhr = new XMLHttpRequest();

    var json = JSON.stringify({
        login: form.login.value,
        email: form.mail.value,
        password: form.password.value
    });

    xhr.open("POST", 'http://comics-shop/php/reg2.php', true);
    xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
    xhr.send(json);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            let result = JSON.parse(xhr.responseText);
            console.log(result);
            error_output_reg(result);
            result = null;
        }

    };
}

function error_output_reg(result) {
    var err_field = document.querySelector('.field');
    while (err_field.firstChild){
        err_field.removeChild(err_field.firstChild);
    }
    for (let i = 0; i < result.length; i++) {
        // if (result.length > 1) {
        //     err_field.insertAdjacentHTML("beforeend", "<p class='error'>" + result[i] + "</p>");
        // } else {
        //     err_field.insertAdjacentHTML("beforeend", "<p class='good'>" + result[i] + "</p>");
        // }
        if (result[i]==="Вы зарегестрированы. Можете залогинится"){
            err_field.insertAdjacentHTML("beforeend", "<p class='good'>" + result[i] + "</p>");
        }
        else {
            err_field.insertAdjacentHTML("beforeend", "<p class='error'>" + result[i] + "</p>");
        }
    }
}
function otprav2(form) {
    var xhr = new XMLHttpRequest();

    var json = JSON.stringify({
        login: form.login.value,
        password: form.password.value
    });

    xhr.open("POST", 'http://comics-shop/php/autoriz.php', true);
    xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');

    xhr.send(json);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            let result = JSON.parse(xhr.responseText);
            console.log(result);
            error_output_aut(result);
            result = null;
        }

    };
}
function error_output_aut(result) {
    var err_field = document.querySelector('.field');
    while (err_field.firstChild){
        err_field.removeChild(err_field.firstChild);
    }
    if (result!=null){
        for (let i = 0; i < result.length; i++) {
            // if (result.length > 1) {
            //     err_field.insertAdjacentHTML("beforeend", "<p class='error'>" + result[i] + "</p>");
            // } else {
            //     err_field.insertAdjacentHTML("beforeend", "<p class='good'>" + result[i] + "</p>");
            // }
            err_field.insertAdjacentHTML("beforeend", "<p class='error'>" + result[i] + "</p>");
        }
    }

}