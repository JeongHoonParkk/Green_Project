<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Room and Bloom</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <style>
          aside,
          footer {
            margin: 3px;
            text-align: center;
          }

          footer {
            position: absolute;
            left: 260px;
            font-size: small;
          }

          .container {
            display: flex;
            margin: 0 auto;
            margin-top: 80px;
            max-width: 100%;
            font-family: notosans;
          }

          #aisdeLeft {
            position: sticky;
            top: 0px;
            height: 500px;
          }

          #aisdeRight {
            position: sticky;
            top: 0px;
            height: 500px;
          }

          #article {
            flex-grow: 1;
            padding: auto;
            margin-bottom: 150px;
            /* 	border: 1px solid red; */
          }

          #aisdeLeft {
            flex-grow: 0;
            width: 230px;
            padding: auto;
          }

          #section {
            flex-grow: 1;
          }

          #aisdeRight {
            flex-grow: 0;
            width: 200px;
            padding: auto;
          }

          #aisdeLeft ul li {
            list-style: none;
            text-align: left;
            font-size: small;
            line-height: 2em;
          }

          #aisdeRight ul li {
            list-style: none;
            text-align: right;
            margin-right: 30px;
            line-height: 2em;
          }

          a {
            text-decoration: none;
            color: gray;
          }

          section {
            margin-top: 40px;
          }

          #log_ul {
            font-size: small;
          }

          a:hover {
            color: black;
          }

          #search {
            border-top: none;
            border-left: none;
            border-right: none;
          }

          h1 {
            margin-top: 20px;
          }

          table {
            margin: 5px auto;
            border: 1px solid rgb(207, 207, 207);
            width: auto;
            border-collapse: collapse;
            margin-top: 20px;
            width: 880px;
            background-color: #FCFCFC;
          }

          .btn {
            border: 1px solid rgb(207, 207, 207);
            border-radius: 0px;
            width: 100px;
            height: 30px;
            line-height: 10px;
            background-color: #F0F0F0;
            margin-right: 5px;
          }

          .btn:hover {
            border: 1px solid grey;
            background-color: #F0F0F0;
          }

          .div_page ul {
            display: flex;
            justify-content: center;
            list-style: none;
          }

          th,
          td {
            padding: 10px;
          }

          .btn_table {
            background-color: transparent;
            border: none;
          }
        </style>
      </head>

      <body>

        <main id="main">
          <div class="container">

            <aside id="aisdeLeft">
              <div id="title">
                <a href="mainPage">
                  <span style="font-size: x-large; position: absolute; left: 0px; color: black; width: 200px;">
                    Room & Bloom
                  </span>
                </a>
              </div>
              <div class="category" style="position:absolute; top:70px;">
                <ul style="width: 200px;">
                  <!-- 						<li><a href="#">BEST</a></li> -->
                  <li><a href="ProductList?catecode=1">의자</a></li>
                  <li><a href="ProductList?catecode=2">침대</a></li>
                  <li><a href="ProductList?catecode=3">테이블/식탁/책상</a></li>
                  <li><a href="ProductList?catecode=4">소파</a></li>
                  <li><a href="ProductList?catecode=5">서랍/수납장</a></li>
                  <li><a href="ProductList?catecode=6">거실장/TV장</a></li>
                  <li><a href="ProductList?catecode=7">선반</a></li>
                  <li><a href="ProductList?catecode=8">진열장/책장</a></li>
                  <li><a href="ProductList?catecode=9">행거/옷장</a></li>
                  <li><a href="ProductList?catecode=0">화장대</a></li>
                </ul>
              </div>
              <div class="notice" style="position: absolute; top: 400px;">
                <ul>
                  <li><a href="noticePage">Notice</a></li>
                  <li><a href="QnAPage">QnA</a></li>
                  <!-- <li><a href="tp_main_review.html">Review</a></li> -->
                </ul>
              </div>
              <div class="info" style="position: absolute; top: 550px;">
                <ul>
                  <li>02-336-4363</li>
                  <li>Mon-Fri 10:00-19:00 <br> Weekend,Holiday off
                  </li>
                </ul>
              </div>

            </aside>

            <!-- 
    =================================================================
    userOrderList
    조은유    |     23-07-08     |              프론트	화면 배열 , css 적용
    =================================================================
    -->

            <!-- 본문 -->
            <section id="section">
              <article>
                <div id="article">

                  <div style="text-align: center; margin-bottom: 10px;">Order List</div>
                  <div style="text-align: center; font-size: small; color: grey;">주문상세</div>

                  <c:forEach items="${userOrder_view}" var="userOrder">
                    <form method="post" action="userOrderView">
                      <table width="500" border="1" align="center">
                        <tr height="50">
                          <td colspan="5">
                            <strong>주문번호</strong>&nbsp;${userOrder.ordercode}<br>
                            <strong>출고날짜</strong>&nbsp;${userOrder.orderdate}
                          </td>
                        </tr>
                      </table>

                      <table>
                        <tr height="140">
                          <td width="100">
                            <img src="${userOrder.proimg}" alt="상품 이미지" width="100" height="100" />
                          </td>
                          <td>
                            <span>${userOrder.proName}</span>
                            <br>
                            <span>
                              상품금액
                              <fmt:formatNumber value="${userOrder.proPrice}" pattern="##,###,###" />원
                            </span>
                            <br>
                            <span>
                              주문수량 : ${userOrder.amount}개
                            </span>
                          </td>
                        </tr>
                      </table>
                    </form>
                  </c:forEach>

                  <table>
                    <c:set var="totalPrice" value="0" />
                    <c:forEach items="${userOrder_view}" var="userOrder">
                      <c:set var="totalPrice" value="${totalPrice + userOrder.totalprice}" />
                    </c:forEach>
                    <tr height="50">
                      <td> <strong>총 주문금액 </strong> </td>
                      <td align="right">
                        <strong>
                          <fmt:formatNumber value="${totalPrice}" pattern="##,###,###" />원
                        </strong>
                      </td>
                    </tr>
                  </table>

                  <c:set var="prevPocode" value="" />
                  <table width="500" border="1" align="center">
                    <!-- 	pocode가 같을때 주소 이중으로 안나오게 처리 -->
                    <c:forEach items="${userOrder_view}" var="userOrder">
                      <c:if test="${userOrder.pocode != prevPocode}">
                        <c:set var="prevPocode" value="${userOrder.pocode}" />
                        <tr height="50">
                          <th>배송지정보</th>
                        </tr>
                        <tr height="30">
                          <td><strong>수령인</strong>&nbsp;&nbsp;&nbsp;${userOrder.name}</td>
                        </tr>
                        <tr height="30">
                          <td><strong>연락처</strong>&nbsp;&nbsp;&nbsp;${userOrder.hp}</td>
                        </tr>
                        <tr height="30">
                          <td><strong>배송지</strong>&nbsp;&nbsp;
                            <span>${userOrder.postcode}</span>
                            <span>${userOrder.addr}</span>
                            <span>${userOrder.etcaddr}</span>
                          </td>
                        </tr>
                        <tr height="30">
                          <td><strong>배송메모</strong>&nbsp;&nbsp;&nbsp;${userOrder.memo}</td>
                        </tr>
                      </c:if>
                    </c:forEach>
                  </table>

                  <table class="btn_table">
                    <tr height="55">
                      <td align="center">
                        <a href="userOrderList"><input type="button" value="목록보기" class="btn"></a>
                      </td>
                    </tr>
                  </table>

                </div>
              </article>
            </section>


            <!-- 우측 사이드바 -->
            <aside id="aisdeRight">
              <div class="rightbar">
                <div class="cart" style="position: absolute; top: 80px; right: 0px;">
                  <ul>
                    <c:if test="${ dto == null }">
                      <li><a href="login" style="color: black;">Cart</a></li>
                    </c:if>
                    <c:if test="${ dto != null }">
                      <li><a href="Gu_cart" style="width: 200px; color: black;">Cart</a></li>
                    </c:if>
                  </ul>
                </div>
                <div class="login" style="position: absolute; top: 160px; right: 0px;">
                  <ul id="log_ul" style="width: 200px;">
                    <!-- 로그인 하지 않은 상태 -->
                    <c:if test="${ dto == null }">
                      <li><a href="login">Log in</a></li>
                      <li><a href="register">Register</a></li>
                    </c:if>
                    <!-- 로그인한 상태 -->
                    <c:if test="${ dto != null }">
                      <li>${dto.name} 님</li>

                      <li><a href="logout">Log out</a></li>
                    </c:if>

                    <!-- 로그인 하지 않은 상태 -->
                    <c:if test="${ dto == null }">
                      <li><a href="login">Order</a></li>
                    </c:if>
                    <!-- 로그인한 상태 -->
                    <c:if test="${ dto != null }">

                      <li><a href="userOrder/userOrderList">Order</a></li>
                    </c:if>

                    <!-- 로그인 하지 않은 상태 -->
                    <c:if test="${ dto == null }">
                      <li><a href="login">My Page</a></li>
                    </c:if>
                    <!-- 로그인한 상태 -->
                    <c:if test="${ dto != null }">

                      <li><a href="myPage">My Page</a></li>
                    </c:if>
                  </ul>
                </div>
                <!-- 검색기능 -->
                <!-- <div class="search"
						style="position: absolute; top: 600px; right: 10px;">
						<form method="post" action="#">
							<fieldset>
								<input type="text" id="search" style="width: 120px;"> 
								<a href="#"> 
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                          		<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                      			</svg>
								</a>
							</fieldset>
						</form> -->
              </div>
            </aside>
          </div>
        </main>
        <footer id="footer" style="font-family: notosans; text-align: left;">
          <a href="mainPage" style="color: black;">Room & Bloom</a> <br>
          <p style="line-height: 2em;">
            <a href="#">About us</a>
          </p>
        </footer>
        <div style="position: fixed; bottom: 5px; left: 50%; right: 50%;">
          <a href="#" style="font-size: xx-large;">^</a>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
          crossorigin="anonymous"></script>
      </body>

      </html>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>