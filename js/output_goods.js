var xhr = new XMLHttpRequest();
xhr.open("POST", 'http://comics-shop/php/goods.php', true);
xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
xhr.send();
xhr.onreadystatechange = function () {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
        let result = JSON.parse(xhr.responseText);
        console.log(result);
        document.querySelector('.goods').insertAdjacentHTML("beforeend","<div class='good'><img class='good-img' src='"+result['img']+"' alt=''><div class='good-title'>"+result['goods_name']+"</div><div class='good-price'>"+result['price']+" РУБ.</div><button class='button'>В корзину</button></div>");
        document.querySelector('.goods').insertAdjacentHTML("beforeend","<div class='good'><img class='good-img' src='"+result['img']+"' alt=''><div class='good-title'>"+result['goods_name']+"</div><div class='good-price'>"+result['price']+" РУБ.</div><button class='button'>В корзину</button></div>");
        document.querySelector('.goods').insertAdjacentHTML("beforeend","<div class='good'><img class='good-img' src='"+result['img']+"' alt=''><div class='good-title'>"+result['goods_name']+"</div><div class='good-price'>"+result['price']+" РУБ.</div><button class='button'>В корзину</button></div>");
        document.querySelector('.goods').insertAdjacentHTML("beforeend","<div class='good'><img class='good-img' src='"+result['img']+"' alt=''><div class='good-title'>"+result['goods_name']+"</div><div class='good-price'>"+result['price']+" РУБ.</div><button class='button'>В корзину</button></div>");
        document.querySelector('.goods').insertAdjacentHTML("beforeend","<div class='good'><img class='good-img' src='"+result['img']+"' alt=''><div class='good-title'>"+result['goods_name']+"</div><div class='good-price'>"+result['price']+" РУБ.</div><button class='button'>В корзину</button></div>");
        document.querySelector('.goods').insertAdjacentHTML("beforeend","<div class='good'><img class='good-img' src='"+result['img']+"' alt=''><div class='good-title'>"+result['goods_name']+"</div><div class='good-price'>"+result['price']+" РУБ.</div><button class='button'>В корзину</button></div>");
        document.querySelector('.goods').insertAdjacentHTML("beforeend","<div class='good'><img class='good-img' src='"+result['img']+"' alt=''><div class='good-title'>"+result['goods_name']+"</div><div class='good-price'>"+result['price']+" РУБ.</div><button class='button'>В корзину</button></div>");
        document.querySelector('.goods').insertAdjacentHTML("beforeend","<div class='good'><img class='good-img' src='"+result['img']+"' alt=''><div class='good-title'>"+result['goods_name']+"</div><div class='good-price'>"+result['price']+" РУБ.</div><button class='button'>В корзину</button></div>");


        //result = null;
    }

};

