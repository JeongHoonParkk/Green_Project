<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	    table{background-color: rgb(213, 203, 190);}
        table, td, th {
            border : 1px solid black;
            border-collapse : collapse;
            height: 30px
        };
</style>
</head>
<body>
	<form action="">
        <div>
            <table>
                <tr>
                    <td>상품코드</td>
                    <td colspan="2">${Gu_ProductView.procode}</td>
                </tr>
                <tr>
                    <td>카테고리코드</td>
                    <td colspan="2">${Gu_ProductView.catecode}</td>
                </tr>
                <tr>
                    <td>상품이름</td>
                    <td id="productName" colspan="2">${Gu_ProductView.proname}</td>
                </tr>
                <tr>
                    <td>상품가격</td>
                    <td colspan="2"><del>${Gu_ProductView.proprice}</del> 원</td>
                </tr>
                <tr>
                    <td>할인가격</td>
                    <td id="saleprice" colspan="2">${Gu_ProductView.prosale} 원</td>
                </tr>
                <tr id="insertRow">
<!--                 	나중에 값받아서 데이터 추가 -->
                	<td>상품옵션 선택</td>
                    <td colspan="2">
<!--                         <select id="option" onchange="updateProductInfo()"> -->
<!--                         <select id="option" onclick="updateProductInfo()"> -->
                        <select id="option" onchange="updateProductInfo()">
                        	<option value=""><b>[필수] option</b></option>
                        	<option value=""><b>------------</b></option>
                            <optgroup label="상품옵션" selected="selected">
                                <option value="흰색">흰색</option>
                                <option value="검은색">검은색</option>
                            </optgroup>
                        </select>
                    </td>
                </tr>
                <tr>
                	<td colspan="3">
                		Total(총 상품 금액) : <spen id="totalPrice"></spen> 원 (<spen id="totalQuantity"></spen>개)
                	</td>
                </tr>
                <tr>
                    <td colspan="3" align="right">
                        <input id="order" type="button" value="주문">&nbsp;&nbsp;
                        <input id="cart" type="button" value="장바구니">&nbsp;&nbsp;
                        <input id="wish" type="button" value="위시리스트">&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>상품설명</td>
                    <td colspan="2">${Gu_ProductView.proinfo}</td>
                </tr>
            </table>
        </div>
    </form>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

// 	삭제
	function removeProduct(optionId) {
		var row = ""; var table = "";
		if (document.getElementById('option1')) {
			row = document.getElementById('option1');
			var table = row.parentNode;
			table.removeChild(row);
			total();
		} else if (document.getElementById('option2')) {
			row = document.getElementById('option2');
			var table = row.parentNode;
			table.removeChild(row);
			total();
		}
	};
	
// 	생성
	function updateProductInfo() {
		var productName = document.getElementById('productName').textContent;//상품이름
		var selectedOption = document.getElementById('option').value;//선택옵션

		var productInfo = {
			name : productName,
			option : selectedOption
		};
		
	    if (selectedOption == '흰색') {
			if (document.getElementById('option1') == null) {
// 		        "흰색" 옵션이 선택되었고, 행이 존재하지 않으면 행 추가
		        var table = document.getElementById('insertRow').parentNode;
		        var row = table.insertRow(table.rows.length - 3);
		        row.id = 'option1';
// 		        row.innerHTML = '<td>상품이름' + productInfo.name + '<br> - '+productInfo.option+'</td>'				
// 	        	document.getElementById('option1').innerHTML = '<td colspan="2">' + productInfo.name + '<br> - '+productInfo.option + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
		        row.innerHTML = '<td colspan="2">' + productInfo.name + '<br> - '+productInfo.option + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
	   												+'<input id="quantity1" type="text" value="1" size="2" maxlength="2" oninput="updateAmount1()">'
	   												+'<a href="#" onclick="increaseQuantity(\'quantity1\')"><img src="resources/quantityup.png" alt="up"></a>'
	   												+'<a href="#" onclick="decreaseQuantity(\'quantity1\')"><img src="resources/quantitydown.png" alt="down"></a>'
	   												+'<a href="#" onclick="removeProduct(\'option1\')"><img src="resources/remove.png" alt="remove"></a></td>'
	   												+'<td id="totalPrice1"></td>';
				updateAmount1();
			}
		} else if (selectedOption == '검은색') {
			if (document.getElementById('option2') == null) {
// 	        	"검은색" 옵션이 선택되었고, 행이 존재하지 않으면 행 추가
		        var table = document.getElementById('insertRow').parentNode;
		        var row = table.insertRow(table.rows.length - 3);
		        row.id = 'option2';
// 		        document.getElementById('option2').innerHTML = '<td colspan="2">' + productInfo.name + '<br> - '+productInfo.option + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
		        row.innerHTML = '<td colspan="2">' + productInfo.name + '<br> - '+productInfo.option + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
													+'<input id="quantity2" type="text" value="1" size="2" maxlength="2" oninput="updateAmount2()">'
													+'<a href="#" onclick="increaseQuantity(\'quantity2\')"><img src="resources/quantityup.png" alt="up"></a>'
													+'<a href="#" onclick="decreaseQuantity(\'quantity2\')"><img src="resources/quantitydown.png" alt="down"></a>'
       												+'<a href="#" onclick="removeProduct(\'option2\')"><img src="resources/remove.png" alt="remove"></a></td>'
													+'<td id="totalPrice2"></td>';
				updateAmount2();
			}
		}
		
		total();
		};
// 	수량 증가
    function increaseQuantity(quantityId) {
        var quantityElement = document.getElementById(quantityId);
        var quantity = parseInt(quantityElement.value);
        quantity += 1;
        quantityElement.value = quantity;
        if (quantityId == 'quantity1') {
            updateAmount1();
        } else if (quantityId == 'quantity2') {
            updateAmount2();
        }
    };
//	수량 감소
    function decreaseQuantity(quantityId) {
    	var quantityElement = document.getElementById(quantityId);
        var quantity = parseInt(quantityElement.value);
        if (quantity > 1) {
            quantity -= 1;
            quantityElement.value = quantity;
            if (quantityId == 'quantity1') {
                updateAmount1();
            } else if (quantityId == 'quantity2') {
                updateAmount2();
            }
        }
    };

// 	수량 * 금액 업데이트1, 2
    function updateAmount1() {
    	var quantity1 = parseInt(document.getElementById('quantity1').value);
    	var price = parseInt(document.getElementById('saleprice').textContent);
		
    	function calculateTotalPrice(quantity, price) {
        	return quantity * price;
        };
    	
    	var totalPrice1 = calculateTotalPrice(quantity1, price);
    	
    	document.getElementById('totalPrice1').textContent = totalPrice1.toLocaleString() + " 원";
    	total();
    	};
    function updateAmount2() {
    	var quantity2 = document.getElementById('quantity2').value;
    	var price = parseInt(document.getElementById('saleprice').textContent);
		
    	function calculateTotalPrice(quantity, price) {
        	return quantity * price;
        };
    	
    	var totalPrice2 = calculateTotalPrice(quantity2, price);
    	
    	document.getElementById('totalPrice2').textContent = totalPrice2.toLocaleString() + " 원";
    	total();
    	};
// 	총 금액/총 갯수
	function total() {
// 		옵션1 옵션2 토탈금액, 갯수
		var tp1 = 0; var tp2 = 0; var tq1 = 0; var tq2 = 0;
		var tp1Text = ""; var tp2Text = "";
// 		총 합계 변수
		var totalPrice = 0;
		var totalQuantity = 0;
		
// 		옵션을 하나만 선택해도 총합계가 증가될 수 있게 if문을 써서 선택한 옵션값만 더해서 누적시킴 
		if (document.getElementById('totalPrice1')) {
			tp1Text = document.getElementById('totalPrice1').textContent; // totalPrice1 값의 텍스트
			tp1 = parseInt(tp1Text.replace(" 원", "").replace(/,/g, ""));
			console.log("totalPrice1 ==>"+tp1);
			totalPrice += tp1;
			
			if (document.getElementById('quantity1')) {
				tq1 = parseInt(document.getElementById('quantity1').value);
				console.log("totalQuantity1 ==>"+tq1);
				totalQuantity += tq1;				
			};
		};

		if (document.getElementById('totalPrice2')) {
			tp2Text = document.getElementById('totalPrice2').textContent; // totalPrice2 값의 텍스트
			tp2 = parseInt(tp2Text.replace(" 원", "").replace(/,/g, ""));
			console.log("totalPrice2 ==>"+tp2);
			totalPrice += tp2;
			
			if (document.getElementById('quantity2')) {
				tq2 = parseInt(document.getElementById('quantity2').value);
				console.log("totalQuantity2 ==>"+tq2);
				totalQuantity += tq2;				
			};
		};

		document.getElementById('totalPrice').textContent = totalPrice.toLocaleString();
		document.getElementById('totalQuantity').textContent = totalQuantity;
	};

</script>
</html>