<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room and Bloom</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <style>
    aside, section, footer {
      margin: 3px;
      text-align: center;
      /* border: 1px solid black; */
      
    }
    footer{
      position: absolute;
      left:260px;
      font-size: small;
    }
    .container {
      display: flex;
      margin: 0 auto;
      margin-top: 80px;
      max-width:100%;
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
      height: 800px;
      flex-grow: 1;
      padding: auto;
    }
    #aisdeLeft {
    flex-grow: 0;
    width:200px;
    padding: auto;
  }
  #section {flex-grow:1;}
  #aisdeRight {
    flex-grow: 0;
    width:250px;
    padding: auto;
    }
    #aisdeLeft ul li{
      list-style: none;
      text-align: left;
      font-size: small;
      line-height: 2em;
    }
    #aisdeRight ul li{
      list-style: none;
      text-align: right;
      margin-right: 30px;
      line-height: 2em;

    }
    a{
      text-decoration: none;
      color: gray;
    }
    .thumbnail{
      padding: 10px;
      width: 30%;
      display: inline-block;
    }
    section{margin-top: 40px;}
    #log_ul{font-size: small;}
    a:hover{
      color: black;
    }

    .thumbnail{
      float: left;
    }
    table, td{
          border : 1px solid gray;
          border-collapse : collapse;
    }

    td{
      padding: 10px;
      font-size: small;
      height: 40px;
    }
  </style>
</head>

<body>

    <!-- 
    =================================================================
    메인 화면
    박정훈    |   23-06-17      |        전체 레이아웃 위치 세팅 및 스타일 적용 
    ================================================================= 
    -->

  <main id="main">
    <div class="container">
    <!-- 
    =================================================================
    좌측 사이드바 레이아웃 세팅
    작성자   |   수정자   |    작성 or 수정일    |     작업 내용
    조은유   |   박동명   |     23-06-16      |    사이드바 레이아웃 조정
    										 	카테고리 페이지 연결 
    ================================================================= 
    -->
      <!-- 좌측 사이드바 -->
      
      <aside id="aisdeLeft">
        <div id="title">
          <a href="mainPage">
            <span style="font-size: x-large; position: absolute; left: 0px; color: black;  width: 200px;">Room & Bloom</span>
          </a>
        </div>
        <div class="category" style="position: absolute; top: 70px;">
          <ul style="width: 200px;">
              <li><a href="#">BEST</a></li>
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
              <li>
                  Mon-Fri 10:00-19:00
                  <br>
                  Weekend,Holiday off
              </li>
          </ul>
      </div>        

      </aside>
    
    <!-- 
    =================================================================
    본문   / 상품 화면 출력부 / 상품 가격및 이미지 출력 부분
    박정훈    |   23-06-16       |       a태그를 사용하여 클릭시 상세페이지 이동 
    =================================================================
    -->
      <!-- 본문 -->
      <section id="section" style="width: 600px;" >
        <article>
          <div id="article" style="height: auto;">

            <div>Shopping Cart</div>

            <div>
              <div style="margin-top: 40px; font-size: small;">국내배송상품</div>
              <table style="width: 100%; margin-top: 60px;" align="center" >
                <tr style="text-align: center;">
                  <td style="width: 30px; height: 5px; padding: 0px;"><input type="checkbox" style="margin-top: 10px;"></td>
                  <td style="width: 80px;">Image</td>
                  <td>Item</td>
                  <td style="width: 120px;">Price</td>
                  <td style="width: 70px;">Qty</td>
                  <td style="width: 120px;">Delivery</td>
                  <td style="width: 120px;">Charge</td>
                  <td>Total</td>
                  <td>Choice</td>
                </tr>

				<c:forEach items="${list}" var="cart">
	                <tr>
	                  <td style="width: 30px; height: 5px; padding: 0px;"><input type="checkbox" style="margin-top: 10px;"></td>
	                  <td style="border-left: hidden;"><img src="${cart.proimg}"></td>
	                  <td style="text-align: left; border-left: hidden;"><div id="product">${cart.proname}</div></td>
	                  <td> 
	                    <div style="float: left;">&#8361;</div> 
	                    <div id="price">${cart.proprice}</div>
	                    </td>
	                  <td>${cart.proqty}</td>
	                  <td>기본배송</td>
	                  <td rowspan="${size}">[조건]</td>
	                  <td></td>
	                  <td>
	                    버튼
	                  </td>
	                </tr>
                </c:forEach>
                <!-- 상품 정보 들어갈 공간 -->



                <tr>
                  <td colspan="9"><span style="float: left;">[기본배송]</span></td>
                </tr>
              </table>
            </div>
            <div style="font-size: small; color: gray; float: left; margin-top: 10px;">
              할인 적용 금액은 주문작성의 결정예정금액에서 확인 가능합니다.
            </div>
            <div><hr style="width: 100%;"></div>
            <div style="float: left; font-size: small; margin-bottom: 40px;">
              선택상품을 
              <input type="submit" value="삭제하기" style="background-color: gray; color: white; ">
            </div>
            <div style="float: right; font-size: small;">
              <input type="submit" value="장바구니비우기" style="background-color: white; color: black; border: 1px solid black;">
            </div>
            <div>
              <table style="width: 100%;" align="center" >
                <tr style="text-align: center;">
                  <td style="width: 20%;">총 상품금액</td>
                  <td style="width: 20%;">총 배송비</td>
                  <td style="width: 60%;">결제예정금액</td>
                </tr>
                <!-- 상품 추가될 시 증가하게 해야됨 -->
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <tr>
                    <td colspan="3" style="border-left: hidden; border-right: hidden; border-bottom: hidden;">
                      <div style="margin-top: 20px; margin-bottom: 100px;">
                        <input type="submit" value="전체상품 주문" style="width: 135px; height: 35px; background-color: black; color: white;">
                         &nbsp;&nbsp;
                        <input type="submit" value="선택상품 주문" style="width: 135px; height: 35px; background-color: gray; color: white;">
                      </div>
                    </td>
                  </tr>
              </table>
            </div>

          </div>
        </article>
      </section>

    <!-- 
    =================================================================
    우측 사이드바 레이아웃 세팅
    조은유   |   23-06-16      |                      사이드바 레이아웃 조정 
    ================================================================= 
    -->
      <!-- 우측사이드바 -->
      <aside id="aisdeRight">
        <div class="rightbar">
          <div class="cart" style="position: absolute; top: 80px; right: 0px;">
              <ul>
                  <li><a href="#" style="width: 200px;">Cart - 0</a></li>
              </ul>
          </div>
          <div class="login" style="position: absolute; top: 160px; right: 0px;">
              <ul id="log_ul" style="width: 200px;">
                  <li><a href="loginPage">Log in</a></li>
                  <li><a href="registerPage">Register</a></li>
                  <li><a href="#">Order</a></li>
                  <li><a href="#">My Page</a></li>
              </ul>
          </div>
          <!-- 검색기능 -->
        <div class="search" style="position: absolute; top: 600px; right: 10px; width: 250px;">
<!--           <form method="post" action="#"> -->
          <form method="post" action="search">
              <fieldset>
                  <input type="text">
                  <a href="#">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                          <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                      </svg>
                  </a>
              </fieldset>    
            </form>
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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>