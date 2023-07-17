        var IMP = window.IMP; 
        IMP.init('imp80461082'); 
    
        function requestPay() {
        	var product = document.getElementById("product").innerHTML; // 상품이름
			var buyer_name = document.getElementById("buyer_name").value; // 구매자
			var postcode = document.getElementById("postcode").value; // 우편번호
			var addr = document.getElementById("addr").value; // 기본주소
			var etcaddr = document.getElementById("etcaddr").value; // 상세주소
			var ph = document.getElementById("ph1").value + document.getElementById("ph2").value + document.getElementById("ph3").value; // 전화번호
			var memo = document.getElementById("memo").value; // 배송메세지
			var price = document.getElementById("price").innerHTML; // 상품가격
			var code = Math.round(new Date().getTime());
			var userid = document.getElementById("userid").value; // 세션으로 받아올 회원 아이디?
			var procode = document.getElementById("procode").value; // 세션으로 받아올 제품 번호
			var amount = document.getElementById("amount").innerHTML; // 상품 수량
			var color = document.getElementById("color").innerHTML; // 상품 수량
			var psize = document.getElementById("psize").innerHTML; // 상품 수량

        	
        	var date = new Date();
			var year = date.getFullYear();
			var month = ("0" + (date.getMonth() + 1)).slice(-2); // 월은 0부터 시작하므로 1을 더하고, 두 자리로 표기하기 위해 0을 추가하고 잘라냄
			var day = ("0" + date.getDate()).slice(-2); // 날짜를 두 자리로 표기하기 위해 0을 추가하고 잘라냄
			var formattedDate = year + "/" + month + "/" + day;
        	
            IMP.request_pay({
                pg : 'kakaopay.TC0ONETIME',
                pay_method : 'card',
                merchant_uid: 'TC0ONETIME' + new Date().getTime(), //주문번호
                name : 'Room&Bloom',//상품이름
                amount : price,//가격
                buyer_name : buyer_name,//구매자 이름
                buyer_tel : ph,//전화번호
                buyer_addr : addr,//주소
                buyer_postcode : postcode//우편번호
            }, function (data) { // callback
                //rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
            	if(data.success){
        			var msg = "결제 완료";

                    $.ajax({
                    	type : 'post',
                    	url : 'productOrd',
                    	data : {
                    			"ordercode": data.merchant_uid,
						        "userid": userid,
						        "name": data.buyer_name,
						        "postcode": data.buyer_postcode,
						        "addr": data.buyer_addr,
						        "etcaddr": etcaddr,
						        "price": data.amount,
						        "hp": data.buyer_tel,
						        "memo": memo,
						        "totalprice": price,
						        "payment": 3,
						        "ispaid": 1,
						        "code": code,
						        "procode": procode,
						        "color": color,
						        "psize": psize,
						     
						        "amount": amount
						        }
                    });
	        		alert(msg);
	        		
	        		var form = document.createElement('form');
					var ordercodeInput = document.createElement('input');
					ordercodeInput.setAttribute('type', 'hidden');
					ordercodeInput.setAttribute('name', 'ordercode');
					ordercodeInput.setAttribute('value', data.merchant_uid);
					form.appendChild(ordercodeInput);
					
					var orderdateInput = document.createElement('input');
					orderdateInput.setAttribute('type', 'hidden');
					orderdateInput.setAttribute('name', 'orderdate');
					orderdateInput.setAttribute('value', formattedDate);
					form.appendChild(orderdateInput);
					
					form.setAttribute('method', 'POST');
					form.setAttribute('action', 'orderComplete');
					document.body.appendChild(form);
					form.submit();
	        		
                }else{
                	var msg = "결제 실패"
                	msg += "에러 내용" + rsp.error_msg;
	        		alert(msg);
                	location.href="/"
                }
//         		document.location.href="/orderSuccess";
        	});
        }
  
  
  <!-- 카카오페이 결제 -->
<!-- input 값 가져올때 -->
<!-- let apple = document.getElementById("apple").value; -->
<!-- div값 가져올때 -->
<!-- let element = document.getElementById("my_div").innerHTML; -->     
 