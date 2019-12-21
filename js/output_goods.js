function view_all() {
    var xhr = new XMLHttpRequest();

    xhr.open("POST", 'http://comics-shop/php/goods.php', true);
    xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
    xhr.send();
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            let result = JSON.parse(xhr.responseText);
            //console.log(result);
            for (let i = 0; i < result.length; i++) {
                document.querySelector('.goods').insertAdjacentHTML("beforeend", "<div class='good'><a href='http://comics-shop/item.php?id=" + result[i]['good_id'] + "'><img class='good-img' src='" + result[i]['img'] + "' id='" + result[i]['good_id'] + "' ></a><div class='good-title'>" + result[i]['goods_name'] + "</div><div class='good-price'>" + result[i]['price'] + " РУБ.</div><button class='button' onclick='ToKorzina(" + result[i]['good_id'] + ")'>В корзину</button></div>");

            }

            //result = null;
        }

    };
}

function ToKorzina(good_id) {
    //console.log(good_id);
    fetch("http://comics-shop/php/ToKorzina.php", {
        method: 'POST',
        headers: {
            'Content-type': 'application/json; charset=utf-8'
        },
        body: JSON.stringify({
            'good_id': good_id
        })
    })
        .then(response => response.text())
        .then(data => {
            console.log(data);
        });
}

function view_one(good_id) {
    var xhr = new XMLHttpRequest();
    var json = JSON.stringify({
        good_id: good_id,

    });

    xhr.open("POST", 'http://comics-shop/php/item_x.php', true);
    xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
    xhr.send(json);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            //document.location.href="http://comics-shop/html/item.php";
            let result = JSON.parse(xhr.responseText);

            console.log(result);
            document.querySelector('.wrap-itemss').insertAdjacentHTML("beforeend", "<img class='item-img' src='"+result['img']+"'><div class='item-info-wrap'><div class='item-title'>"+result['goods_name']+"</div><div class='item-price'>"+result['price']+" РУБ.</div><button class='button' style='margin-bottom: 40px;width: 150px;height: 50px;' onclick='ToKorzina(" + result['good_id'] + ")'>В корзину</button><div class='item-info'><p style='font-weight: bold'>Характеристики:</p><p>Издатель: "+result['publishers']+"</p><p>Категория: "+result['category']+"</p><p>ISBN: "+result['isbn']+"</p><p>Автор: "+result['autor_name']+"</p></div><div class='discription'><div class='discription-title'>Описание:</div><div class='discription-field'>"+result['discription']+"</div></div></div>");
        }
    };
}