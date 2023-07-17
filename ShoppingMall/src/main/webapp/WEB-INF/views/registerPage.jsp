<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Room and Bloom</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <style>
    aside,
    section,
    footer {
      margin: 3px;
      text-align: center;
      /* border: 1px solid black; */
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
      padding-left: 12px;
      padding-right: 12px;

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
      width: 200px;
      padding: auto;
    }

    #section {
      flex-grow: 1;
    }

    #aisdeRight {
      flex-grow: 0;
      width: 250px;
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

    .thumbnail {
      padding: 10px;
      width: 30%;
      display: inline-block;
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

    #prdImg img {
      max-width: 100%;

      height: auto;
      display: block;
      overflow: hidden;
    }

    .underline {
      border-left-width: 0px;
      border-right-width: 0px;
      border-top-width: 0px;
      border-bottom-width: 1px;
    }
    .card{
        left: 50%;
        right: 50%;
        width: 600px;
        margin: 0 auto;
    }
    .col-md-5{
        margin-left: 10%;
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
    조은유   |   23-06-16      |                      사이드바 레이아웃 조정 
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
      <section id="section" style="width: 600px;left: 50%; right: 50%;">
        <article>

            <div class="container">
                <div id="article">


    <!-- <div class="row justify-content-center"> -->
                    <!-- <div class="col-md-5"> -->
                    <div class="col-md-5">
                        <div class="card">
                            <div class="card-header">Register</div>
                            <div class="card-body">
                                <form class="form-horizontal" method="post" action="#">

                                    <div class="form-group">
                                        <label for="name" class="cols-sm-2 control-label">Your Name</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="name" id="name" placeholder="Enter your Name" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="cols-sm-2 control-label">Your Email</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="email" id="email" placeholder="Enter your Email" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="username" class="cols-sm-2 control-label">Username</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="username" id="username" placeholder="Enter your Username" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="cols-sm-2 control-label">Password</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="password" class="form-control" name="password" id="password" placeholder="Enter your Password" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="password" class="form-control" name="confirm" id="confirm" placeholder="Confirm your Password" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <button type="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
                                    </div>
                                    <div class="login-register">
                                        <a href="index.php">Login</a>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                <!-- </div> -->
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
                           <c:if test="${ dto == null }">
            		 			<li><a href="login">Cart - 0</a></li>
              				</c:if>
              				<c:if test="${ dto != null }">
              					<li><a href="#" style="width: 200px; color: black;">Cart - 0</a></li>
              				</c:if>
                       </ul>
                   </div>
          <div class="login" style="position: absolute; top: 160px; right: 0px;">
            <ul id="log_ul">
              <li><a href="loginPage">Log in</a></li>
              <li><a href="registerPage">Register</a></li>
              <li><a href="#">Order</a></li>
              <li><a href="#">My Page</a></li>
            </ul>
          </div>
          <!-- 검색기능 -->
<!--           <div class="search" style="position: absolute; top: 600px; right: 10px;"> -->
<!--             <form method="post" action="#"> -->
<!--               <fieldset> -->
<!--                 <input type="text" class="underline" style="width: 130px;"> -->
<!--                 <a href="#"> -->
<!--                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" -->
<!--                     class="bi bi-search" viewBox="0 0 16 16"> -->
<!--                     <path -->
<!--                       d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" /> -->
<!--                   </svg> -->
<!--                 </a> -->
<!--               </fieldset> -->
<!--             </form> -->
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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
    crossorigin="anonymous"></script>
</body>

</html>