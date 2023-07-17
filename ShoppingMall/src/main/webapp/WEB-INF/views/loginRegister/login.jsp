<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Room and Bloom</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
      <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
      <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
      <style>
        /* @media (min-width: 768px) {
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
 */


        aside,
        section,
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

        #id,
        #pwd {
          border-top: none;
          border-left: none;
          border-right: none;
          width: 300px;
        }

        .login_button {
          border-top: none;
          border-left: none;
          border-right: none;
          border-bottom: none;
          width: 300px;
          height: 44px;
        }

        #search {
          border-top: none;
          border-left: none;
          border-right: none;
        }

        /* 로그인 실패시 경고글 */
        .login_warn {
          color: red;
          font-size: small;
        }

        .search_idpwd {
          font-size: small;
        }

        #kakao-login-btn {
          width: 200px;

        }
      </style>

      <!-- Custom styles for this template -->
      <!-- <link href="css/signin.css" rel="stylesheet"> -->

    </head>

    <body>

      <main id="main">
        <div class="container">

          <aside id="aisdeLeft">
            <div id="title">
              <a href="mainPage">
                <span style="font-size: x-large; position: absolute; left: 0px; color: black;  width: 200px;">Room &
                  Bloom</span>
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

          <!-- =========================================================================================
           작성자   |    개발 및 수정 일자    |    수정 내용
           조은유          23-06-27            프론트   로그인 화면 설정
===========================================================================================-->
          <!-- 본문 -->
          <section id="section" style="width: 600px;">
            <article>
              <div id="article">

                <!-- 로그인창 -->
                <main class="form-signin w-100 m-auto">
                  <form method="post" id="login_form" name="login_form">
                    Log in <br><br><br>
                    <input type="radio" name="loigntype" value="user">회원
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="loigntype" value="admin">관리자
                    <br><br>
                    <div>
                      <input type="text" placeholder="ID" size="25" name="id" id="id">
                    </div>
                    <br>
                    <div>
                      <input type="password" placeholder="Password" size="25" name="pwd" id="pwd">
                    </div>

                    <div class="login_warn" style="margin-top: 10px;">
                      <c:if test="${result == 0}">
                        사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.
                      </c:if>
                    </div>

                    <div style="margin-top: 20px;">
                      <input type="submit" value="Log in" name="loginbtn" class="login_button">
                    </div>

                    <table style="display: inline-block; margin-top: 10px;">
                      <form>
                        <tr height="30">
                          <td colspan="2" align="center">
                            <a id="kakao-login-btn"></a>
                            <!--                <div id="result"></div> -->
                          </td>
                        </tr>
                      </form>
                    </table>

                    <br><br>
                    <div class="search_idpwd">
                      <a href="userIdSearch">아이디 찾기</a>
                      &nbsp;&nbsp;&nbsp;
                      <a href="userPwdSearch">비밀번호 찾기</a>
                    </div>
                  </form>
                </main>
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
              <!--         <div class="search" style="position: absolute; top: 600px; right: 10px;"> -->
              <!--           <form method="post" action="#"> -->
              <!--               <fieldset> -->
              <!--                   <input type="text" id="search"> -->
              <!--                   <a href="#"> -->
              <!--                       <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"> -->
              <!--                           <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/> -->
              <!--                       </svg> -->
              <!--                   </a> -->
              <!--               </fieldset>     -->
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
      <div style="position: fixed; bottom: 5px; left: 50%; right: 50%;">
        <a href="#" style="font-size: xx-large;">^</a>
      </div>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
    </body>

    </html>

    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- =========================================================================================
           작성자   |    개발 및 수정 일자    |    수정 내용
           조은유          23-07-03           관리자&회원 로그인 라디오 버튼 조건 추가
===========================================================================================-->
    <script>
      $("input[name='loigntype']").change(function () {
        if ($("input[name='loigntype']:checked").val() == 'user') {
          $(".login_button").click(function () {
            $("#login_form").attr("action", "login_yn");
          });
        }
        if ($("input[name='loigntype']:checked").val() == 'admin') {
          $(".login_button").click(function () {
            $("#login_form").attr("action", "adminlogin_yn");
          });
        }
      });

      $(".login_button").click(function () {
        var login_form = document.login_form;
        if ((login_form.loigntype[0].checked == false) && (login_form.loigntype[1].checked == false)) {
          alert("로그인 유형을 선택해주세요.");
          return false;
        }
      });
    </script>
    <!-- =========================================================================================
           로그인 및 회원가입 구현
           작성자   |    개발 및 수정 일자    |    수정 내용
           김효진          23-06-26           로그인   아이디 찾기 기능 구현 완료
           김효진          23-06-27           로그인   비밀번호 찾기 기능 구현 완료 (하루 2회 제한)           
           김효진          23-06-28           로그인   ajax 작성(로그인&회원가입)및 토큰 연결
           김효진          23-06-29           카카오톡 회원가입 데이터베이스 삽입 완료
           김효진          23-06-30           카카오톡 로그인 구현 & session 유지
           김효진          23-07-01           로그인    로그인 후 URL 로그인 페이지로 강제 접속 가능한 오류 해결
           김효진          23-07-02           카카오톡 회원가입 완료페이지 연결 오류 해결
           김효진          23-07-03           카카오톡 회원가입 이메일(선택동의) null 일 경우 데이터 전송 오류 해결
   ===========================================================================================-->
    <script type="text/javascript">

      /* 카카오톡 가입 */
      Kakao.init('b3cd6eb907331ef546828061cff24e3f');
      console.log(Kakao.isInitialized()); //SDK 초기화=true, 초기화X=false 반환

      Kakao.Auth.createLoginButton({
        container: '#kakao-login-btn',
        success: function (authObj) {
          Kakao.API.request({
            url: '/v2/user/me',
            success: function (result) {
              $('#result').append(result);
              id = result.id
              connected_at = result.connected_at
              kakao_account = result.kakao_account
              $('#result').append(kakao_account);
              //                resultdiv="<h2>로그인 성공 !!"
              //                resultdiv += '<h4>id: '+id+'<h4>'
              //                resultdiv += '<h4>connected_at: '+connected_at+'<h4>'
              email = "";
              gender = "";
              if (typeof kakao_account != 'undefined') {
                email = kakao_account.email;
                gender = kakao_account.gender;
              }


              if (id && email) {
                const encodedId = encodeURIComponent(id);
                const encodedEmail = encodeURIComponent(email);
                $.ajax({
                  type: "post"
                  , url: "register_kakao"
                  , data: { "id": encodedId, "email": decodeURIComponent(encodedEmail) }
                  , success: function (response) {
                    console.log("Encoded ID:", encodedId);
                    console.log("Encoded Email:", encodedEmail);
                    if (response == "success") {
                      document.location.href = "registerKakaoOk"; // 가입 성공 시
                    } else {
                      document.location.href = "login_kakao"; // 이미 가입된 회원인 경우
                    }
                  },
                })
              } else if (id != null && email == null) {
                const encodedId = encodeURIComponent(id);
                const encodedEmail = encodeURIComponent(email); //이메일 선택동의 수락 안한 경우
                $.ajax({
                  type: "post",
                  url: "register_kakao",
                  data: { "id": encodedId, "email": decodeURIComponent(encodedEmail) },
                  success: function (response) {
                    console.log("Encoded ID:", encodedId);
                    console.log("Encoded Email:", encodedEmail);
                    if (response == "success") {
                      document.location.href = "registerKakaoOk"; // 가입 성공 시
                    } else {
                      document.location.href = "login_kakao"; // 이미 가입된 회원인 경우
                    }
                  },

                });
              }

              //                resultdiv += '<h4>email: '+email+'<h4>'
              //                resultdiv += '<h4>gender: '+gender+'<h4>'
              $('#result').append(resultdiv);

            }, //end success: function(result) {
            fail: function (error) {
              alert(
                'login success, but failed to request user information: ' +
                JSON.stringify(error)
              )
            },
          })
        },
        fail: function (err) {
          alert('failed to login: ' + JSON.stringify(err))
        },
      })
    </script>