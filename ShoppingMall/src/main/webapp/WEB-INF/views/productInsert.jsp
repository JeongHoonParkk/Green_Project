<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    div{
      /* border: 1px solid black; */
    }
  </style>
<!--   스타일 적용 -->
  <link rel="stylesheet" href="resources/css/insert.css">
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
    조은유   |   23-06-16      |                      사이드바 레이아웃 조정 
    ================================================================= 
    -->
      <!-- 좌측 사이드바 -->
      
      <aside id="aisdeLeft">
        <div id="title">
          <a href="tp_main_1.html">
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
              <li><a href="reviewPage">Review</a></li>
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
    본문   / 제품 등록
    박정훈    |   23-06-30       |       
    =================================================================
    -->
      <!-- 본문 -->
      <section id="section" style="width: 600px;" >
        <article>
          <div id="article" style="height: auto;">

            <h2>제품등록</h2>
            <form method="post" action="register">
                <div id="insertr">
                    <input class="ipt" type="text" required name="proName" size="70">
                    <label>제품명</label>
                    <span id="sp"></span>
                </div>
                <div id="insertr">
                  <td>
                    <input class="ipt" type="text" required name="proPrice" size="70">
                    <label>가격</label>
                    <span id="sp"></span>
                </div>
                <div id="insertr">
                    <input class="ipt" type="text" required name="proSale" size="70">
                    <label>세일가</label>
                    <span id="sp"></span>
                </div>
                <div id="insertr">
                    <input class="ipt" type="text" required name="proQty" size="70">
                    <label>수량</label>
                    <span id="sp"></span>
                </div>
                <div id="insertr">
                    <input class="ipt" type="text" required name="proThumb" size="70">
                    <label>썸네일</label>
                    <span id="sp"></span>
                </div>
                <div id="insertr">
                    <input class="ipt" type="text" required name="cateCode" size="70">
                    <label>카테고리</label>
                    <span id="sp"></span>
                </div>
                <div id="insertr">
                    <input class="ipt" type="text" required name="proImg" size="70">
                    <label>상세이미지</label>
                    <span id="sp"></span>
                </div>
              <textarea name="proInfo" rows="10" cols="70" placeholder="제품 상세 설명 입력"></textarea>
              <tr>
                <div>
                  <input type="submit" value="등록">
                </div>
              </tr>
            </form>
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
                  <li><a href="#" style="color: black; width: 200px;">Cart - 0</a></li>
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
          <form method="post" action="#">
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
    <a href="tp_main_1.html" style="color: black;">Room & Bloom</a> <br>
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