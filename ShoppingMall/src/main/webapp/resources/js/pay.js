        var IMP = window.IMP; 
        IMP.init('imp80461082'); 
    
        function requestPay2() {
        	let product = document.getElementById("product").innerHTML;//상품이름
        	let buyer_name = document.getElementById("buyer_name").value;//구매자
        	let postcode = document.getElementById("postcode").value;//우편번호
         	let addr = document.getElementById("addr").value;//기본주소
         	let etcaddr = document.getElementById("etcaddr").value;//상세주소
        	let ph = document.getElementById("ph1").value + document.getElementById("ph2").value + document.getElementById("ph3").value;//전화번호
         	let memo = document.getElementById("memo").value;//배송메세지
        	let price = document.getElementById("price").innerHTML;//상품가격
         	let code = Math.round(new Date().getTime());
        	let userid = 'qwerty1234'; // 세션으로 받아올 회원 아이디?
        	
            IMP.request_pay({
                pg : 'html5_inicis.INIBillTst',
                pay_method : 'card',
                merchant_uid: 'INIBillTst' + new Date().getTime(), //주문번호
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
                    msg += '// 결제 상품 : ' + data.name;
                    msg += '// 결제 금액 : ' + data.paid_amount;
                    msg += '// 주문번호 : ' + data.merchant_uid;
 					
                    $.ajax({
                    	type : 'post',
                    	url : 'productOrd',
                    	data : {"ordercode" : data.merchant_uid 
	                            , "userid" : userid
	                            , "name" : data.buyer_name
	                            , "postcode" : data.buyer_postcode
	                            , "addr" : data.buyer_addr
	                            , "etcaddr" : etcaddr
	                            , "price" : data.amount
	                            , "hp" : data.buyer_tel
	                            , "memo" : memo
	                            , "totalprice" : price
	                            , "payment" : 2 //결제수단
	                            , "ispaid" : 1
	                            , "code" : code}
                    });
	        		alert(msg);
	                location.href="orderComplete"
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
 