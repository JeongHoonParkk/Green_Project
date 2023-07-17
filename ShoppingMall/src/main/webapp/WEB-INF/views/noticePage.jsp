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
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
  
    <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>
    

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      td{
        border: 1px solid gray;
        color: gray;
        font-family: notosans;
        font-size: medium;
      }
  </style>

      <!-- Custom styles for this template -->
      <link href="css/signin.css" rel="stylesheet">

</head>

<body>

  <main id="main">
    <div class="container">

      <aside id="aisdeLeft">
        <div id="title">
          <a href="mainPage">
            <span style="font-size: x-large; position: absolute; left: 0px; color: black;  width: 200px;">Room & Bloom</span>
          </a>
        </div>
        <div class="category" style="position: absolute; top: 70px;">
          <ul style="width: 200px;">
              <li><a href="#">의자</a></li>
              <li><a href="#">침대</a></li>
              <li><a href="#">테이블/식탁/책상</a></li>
              <li><a href="#">소파</a></li>
              <li><a href="#">서랍/수납장</a></li>
              <li><a href="#">거실장/TV장</a></li>
              <li><a href="#">선반</a></li>
              <li><a href="#">진열장/책장</a></li>
              <li><a href="#">행거/옷장</a></li>
              <li><a href="#">화장대</a></li>
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
    로그인 화면 
    박정훈    |   23-06-17       |                            로그인 화면
    =================================================================
    -->
      <!-- 본문 -->
      <section id="section" style="width: 600px;" >
        <article>
          <div id="article">
            
            <div class="titleArea" style="font-size: medium;">
              Notice
              <p>공지사항</p>
            </div>

            <div class="notice_Border" >
              <table width="100%">

                <colgroup class="board" >
                  <!-- <col style="width: 70px;">
                    <col style="width: 80px;" class="displaynone">
                    <col style="width: 80px;" class="displaynone"> -->
                    <!-- <col style="width: 55px;">
                    <col style="width: 55px;" class="displaynone">
                    <col style="width: auto;">
                    <col style="width: 135px;" class="displaynone">
                    <col style="width: 90px;"> -->
                    <col style="width: 80px;">
                    <col style="width: 700px;">
                    <col style="width: 120px;">
                    <col style="width: 100px;">
                    <col style="width: 50px;">
                </colgroup>
                <thead>
                  <tr >
                    <!-- 공지사항 th 태그 td로 변경 추후 필요에 따라 th 변경할 수도 있음 -->
                    <td scope="col" class="displaynone">No</td>
                    <!-- <td scope="col" >category</th> -->
                    <td scope="col">Subject</td>
                    <td scope="col">Writer</td>
                    <td scope="col">Date</td>
                    <td scope="col">Hit</td>
                    <!-- 꼭 있어야 할까요? -->
                    <!-- <th class="displaynone">
                    추천(이미지 파일)
                    </th>
                    <th class="displaynone">
                    Grade(별점)
                    </th> -->
                    <!-- ?// -->
                  </tr>
                </thead>
                <tbody>
                  <!--  -->
                  <!-- 게시글 작성하면 입력값 받아서 등록되어야함 -->
                  <!--  -->
                  <tr class="record">
                    <td>
                      <a href="noticeContent">1</a>
                    </td>
                    <td class="notice subject">
                      <a href="tp_main_notice_content.html">적립금 안내</a>
                    </td>
                    <td>team4</td>
                    <td class="displaynone">
                    2023-06-16
                    </td>
                    <td class="displaynone">888</td>
                  </tr>
                </tbody>
              </table> 
              <p class="displaynone">
              <!-- 띄워쓰기용? -->
              </p>
            </div>


          </div>
        </article>
      </section>

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
        <div class="search" style="position: absolute; top: 600px; right: 10px;">
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