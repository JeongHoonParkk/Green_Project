<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="orderpage.css">
</head>
<body>
        <form id="frm">
        <table style="width: 900px;" align="center" border="1px">
            <caption align="top"><hr style="width: 900px; margin-top: 60px; margin-bottom: 40px;"></caption>
            <tr>
                <td colspan="8"><b style="float: left;">국내배송상품 주문내역</b>
                    <div style="float: right; margin-top: -5px; margin-right: 5px;"><input type="button" value="이전페이지" onclick="cancel()" ></div>
                </td>
            </tr>
            <tr style="text-align: center;">
                <td style="width: 30px; height: 5px; padding: 0px;"><input type="checkbox" style="margin-top: 10px;"></td>
                <td style="width: 80px;">Image</td>
                <td>Item</td>
                <td style="width: 120px;">Price</td>
                <td style="width: 70px;">Qty</td>
                <td style="width: 120px;">Delivery</td>
                <td style="width: 120px;">Charge</td>
                <td>Total</td>
            </tr>
            <!-- 상품 추가될 시 증가하게 해야됨 -->
            <c:forEach items="${list}" var="cart">
                <tr style="background-color: pink">
                    <td></td>
                    <td style="border-left: hidden;">${cart.proimg}</td>
                    <td style="text-align: left; border-left: hidden;"><div id="product">${cart.proname}</div></td>
                    <td> 
                        <div style="float: left;">&#8361;</div> 
                        <div id="price">${cart.proprice}</div>
                    </td>
                    <td>
                        <div>${cart.proqty}</div>
                    </td>
                    <td>기본배송</td>
                    <td>[조건]</td>
                    <td></td>
               </tr>
            </c:forEach>	
			<tr>
				<td colspan="8"><span style="float: left;">[기본배송]</span></td>
			</tr>
        </table>
    </form>    
</body>
</html>
	
