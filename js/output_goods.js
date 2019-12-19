var xhr = new XMLHttpRequest();
xhr.open("POST", 'http://comics-shop/php/goods.php', true);
xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
xhr.send();
xhr.onreadystatechange = function () {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
        let result = JSON.parse(xhr.responseText);
        console.log(result);
        for (let i = 0; i < result.length; i++) {
            document.querySelector('.goods').insertAdjacentHTML("beforeend","<div class='good' id='"+result[i]['good_id']+"'><img class='good-img' src='"+result[i]['img']+"' alt=''><div class='good-title'>"+result[i]['goods_name']+"</div><div class='good-price'>"+result[i]['price']+" РУБ.</div><button class='button' onclick='ToKorzina(" + result[i]['good_id'] + ")'>В корзину</button></div>");

        }

        //result = null;
    }

};

function ToKorzina(good_id) {
    console.log(good_id);
    fetch("http://comics-shop/php/ToKorzina.php", {
        method:'POST',
        headers:{
            'Content-type': 'application/json; charset=utf-8'
        },
        body:JSON.stringify({
            'good_id':good_id
        })
    })
        .then(response => response.text())
        .then(data => {
            console.log(data);
        });
}

