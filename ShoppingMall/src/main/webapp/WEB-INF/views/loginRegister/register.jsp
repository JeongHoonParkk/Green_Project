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
      <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
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

        #search {
          border-top: none;
          border-left: none;
          border-right: none;
        }

        .id_ok {
          color: green;
          display: none;
        }

        .id_already {
          color: red;
          display: none;
        }

        #alert-success {
          color: green;
          display: none;
        }

        #alert-danger {
          color: red;
          display: none;
        }

        .email_ok {
          color: green;
          display: none;
        }

        .email_already {
          color: red;
          display: none;
        }

        .hp_ok {
          color: green;
          display: none;
        }

        .hp_already {
          color: red;
          display: none;
        }

        #id,
        #pwd,
        #re_pwd,
        #name,
        #hp,
        #email {
          border-left: none;
          border-top: none;
          border-right: none;
          border-bottom: 1px solid;
          width: 600px;
        }

        .menu {
          text-align: left;
        }

        button {
          width: 600px;
          height: 44px;
          border-left: none;
          border-top: none;
          border-right: none;
          border-bottom: none;
          color: black;
        }

        textarea {
          color: gray;
          font-size: small;
          padding: 10px 0 0 10px;
          resize: none;

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
              <a href="mainPage"> <span
                  style="font-size: x-large; position: absolute; left: 0px; color: black; width: 200px;">Room
                  & Bloom</span>
              </a>
            </div>
            <div class="category" style="position: absolute; top: 70px;">
              <ul style="width: 200px;">
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
          <!-- =========================================================================================
				  회원가입 페이지 
				  작성자   |    개발 및 수정 일자    |    수정 내용
				  조은유                			   회원가입 페이지 적용
	===========================================================================================-->
          <!-- 본문 -->
          <section id="section" style="width: 600px;">
            <article>
              <div id="article">

                <!-- 회원가입창 -->
                <main class="form-signin w-100 m-auto">
                  Register<br><br><br><br>
                  <table align="center" width="600px">
                    <form method="post" action="registerOk" name="signform" id="signform" onsubmit="return mySubmit()">
                      <tr height="50px">
                        <td class="menu">아이디</td>
                        <td style="color: gray; font-size: small; text-align: right;">
                          (영문소문자/숫자, 4~16자)</td>
                      </tr>
                      <tr height="50px">
                        <td colspan="2"><input type="text" size="20" name="id" id="id"></td>
                      </tr>
                      <tr>
                        <td colspan="2" style="text-align: left;">
                          <!-- id ajax 중복체크 --> <span class="id_ok">사용 가능한
                            아이디입니다.</span> <span class="id_already">아이디가 이미 존재합니다.</span>
                        </td>
                      </tr>
                      <tr height="50px">
                        <td class="menu">암호</td>
                        <td style="color: gray; font-size: small; text-align: right;">
                          (영문 대소문자/숫자/특수문자 3가지 이상 조합, 8~16자)</td>
                      </tr>
                      <tr height="50px">
                        <td colspan="2"><input type="password" size="20" name="pwd" id="pwd"></td>
                      </tr>
                      <tr height="50px">
                        <td class="menu">암호확인</td>
                      </tr>
                      <tr height="50px">
                        <td colspan="2"><input type="password" size="20" name="re_pwd" id="re_pwd"></td>
                      </tr>
                      <tr>
                        <td colspan="2" style="text-align: left;"><span id="alert-success">비밀번호가 일치합니다.</span> <span
                            id="alert-danger">비밀번호가 일치하지 않습니다.</span></td>
                      </tr>
                      <tr height="50px">
                        <td class="menu">이름</td>
                      </tr>
                      <tr height="50px">
                        <td colspan="2"><input type="text" size="20" name="name" id="name"></td>
                      </tr>
                      <tr height="50px">
                        <td class="menu">번호</td>
                      </tr>
                      <tr height="50px">
                        <td colspan="2">
                          <input type="text" size="20" name="hp" id="hp" onkeyup="phoneNumber(this)">
                        </td>
                      </tr>
                      <tr>
                        <td colspan="2" style="text-align: left;">
                          <!-- hp ajax 중복체크 -->
                          <span class="hp_ok">
                            사용 가능한 전화번호입니다.</span>
                          <span class="hp_already">전화번호가
                            이미 존재합니다.</span>
                        </td>
                      </tr>
                      <tr height="50px">
                        <td class="menu">메일</td>
                      </tr>
                      <tr height="50px">
                        <td colspan="2"><input type="text" size="20" name="email" id="email">
                      </tr>
                      <tr>
                        <td colspan="2" style="text-align: left;">
                          <!-- email ajax 중복체크 --> <span class="email_ok">
                            사용 가능한 이메일입니다.</span> <span class="email_already">이메일이 이미 존재합니다.</span>
                        </td>
                      </tr>
                  </table>
                  <div>
                    <br><br><br>
                  </div>
                  <!-- =========================================================================================
				  로그인&간편로그인(카카오톡) 및 회원가입&간편회원가입(카카오톡) 구현
				  작성자   |    개발 및 수정 일자    |    수정 내용
				  김효진          23-06-21      	  개인정보동의 체크박스 구현완료
	===========================================================================================-->

                  <div class="checkbox_group" align="center">
                    <div>
                      <b>전체 동의</b>
                      <br><br>
                      <input type="checkbox" id="check_all">
                      <label for="check_all">이용약관 및 개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다.</label>
                    </div>
                    <br>
                    <div>
                      <b>[필수]개인정보 처리방침 동의</b>
                      <br><br>
                      <textarea rows=6 cols="70" readonly><%@ include file="./h1.jsp"%></textarea>
                      <br> 이용약관에 동의하십니까? <input type="checkbox" id="check_1" class="normal"> <label
                        for="check_1">동의함</label><br>
                    </div>
                    <br>
                    <div>
                      <b>[필수]서비스 이용약관 동의</b>
                      <br><br>
                      <textarea rows=6 cols="70" readonly><%@ include file="./h2.jsp"%></textarea>
                      <br> 이용약관에 동의하십니까?
                      <input type="checkbox" id="check_2" class="normal">
                      <label for="check_2">동의함</label>
                      <br>
                    </div>
                    <br>
                    <div>
                      <b>[선택]마케팅 수신 동의</b>
                      <br><br>
                      <textarea rows=6 cols="70" readonly><%@ include file="./h3.jsp"%></textarea>
                      <br>
                      SMS 수신을 동의하십니까?
                      <input type="checkbox" id="check_3" name="sms" class="normal" value="N">
                      <label for="check_3">동의함</label>
                      <br>
                      이메일 수신을 동의하십니까?
                      <input type="checkbox" id="check_4" name="emails" class="normal" value="N">
                      <label for="check_4">동의함</label>
                    </div>
                  </div>
                  <!-- =============================================================================================    -->

                  <div>
                    <br><br><br>
                  </div>

                  <table align="center" width="600px">
                    <tr>
                      <td>
                        <button type="submit" name="signup" id="signupbtn">Register</button>
                      </td>
                    </tr>
                  </table>

                  </form>
                  <div style="height: 200px;">
                    <!-- 								공백땜에 만듬... -->
                  </div>

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
              <!-- 					<div class="search" -->
              <!-- 						style="position: absolute; top: 600px; right: 10px;"> -->
              <!-- 						<form method="post" action="#"> -->
              <!-- 							<fieldset> -->
              <!-- 								<input type="text" id="search"> <a href="#"> <svg -->
              <!-- 										xmlns="http://www.w3.org/2000/svg" width="16" height="16" -->
              <!-- 										fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"> -->
              <!--                           <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" /> -->
              <!--                       </svg> -->
              <!-- 								</a> -->
              <!-- 							</fieldset> -->
              <!-- 						</form> -->
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
    <script>
      /*=========================================================================================
         로그인&간편로그인(카카오톡) 및 회원가입&간편회원가입(카카오톡) 구현
         작성자   |    개발 및 수정 일자    |    수정 내용
         김효진          23-06-16           로그인, 회원가입, 회원가입 완료페이지 구현 완료
         김효진          23-06-19           회원가입   아이디 중복확인 기능 구현 중
         김효진          23-06-20           회원가입	유효성 검사(아이디, 비밀번호, 이름 ,전화번호, 이메일)
                              회원가입	비밀번호 확인(pwd=re_pwd)구현
         김효진          23-06-21           개인정보동의 체크박스 구현완료
         김효진          23-06-22           회원가입   아이디 중복확인 기능 오류 해결
         김효진                             회원가입   중복검사 기능 구현 완료(전화번호, 이메일)
         김효진          23-07-03           회원가입   선택동의(sms,email)체크 여부에 따라 데이터 값을 전송 처리
         김효진                             회원가입   전화번호 하이픈 처리 & 전화번호 중복처리 및 팝업창 수정 완료
         김효진          23-07-05           회원가입   비밀번호 유효성 검사 조건 변경
         김효진          23-07-07           회원가입   아이디, 비밀번호, 전화번호, 이메일 유효성 검사 오류 수정 완료
      =========================================================================================*/
      /* submit 클릭시 팝업창 */
      var checkEmail = false;
      var checkHp = false;
      var checkId = false;
      var checkPw = false;
      function mySubmit() {
        //             alert("test start 팝업창");
        //          console.log("f");
        // event.preventDefault(); // 제출 동작을 막음
        var id = $("#id").val();
        var pw = $("#pwd").val();
        var re_pw = $("#re_pwd").val();
        var name = $("#name").val();
        var phone = $("#hp").val();
        var email = $("#email").val();
        var sms = $("#check_3").val();
        var emails = $("#check_4").val();

        var idregex = /^[a-z][a-z\d]{4,16}$/;
        var pwregex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/
        var re_pwregex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/
        var nameregex = /[가-힣]{1,}/;
        var phoneregex = /^01\d\d{3,4}\d{4}$/;
        // 하이픈을 제거한 전화번호
        var phoneNumberWithoutHyphen = phone.replace(/-/g, '');
        var emailregex = /.+@[a-z]+(\.[a-z]+){1,2}$/;

        idregex = idregex.test(id);
        if (!idregex) {
          alert("아이디 양식을 다시 확인해주세요.");
          return false;
        }
        pwregex = pwregex.test(pw);
        if (!pwregex) {
          alert("비밀번호 양식을 다시 확인해주세요.");
          return false;
        }
        re_pwregex = re_pwregex.test(re_pw);
        if (!re_pwregex) {
          alert("비밀번호 확인을 진행해 주세요.");
          return false;
        }
        nameregex = nameregex.test(name);
        if (!nameregex) {
          alert("이름 양식을 다시 확인해주세요.");
          return false;
        }
        phoneregex = phoneregex.test(phoneNumberWithoutHyphen);
        if (!phoneregex) {
          alert("핸드폰 번호 양식을 다시 확인해주세요." + phoneNumberWithoutHyphen);
          return false;
        }
        emailregex = emailregex.test(email);
        if (!emailregex) {
          alert("이메일 양식을 다시 확인해주세요.");
          return false;
        }

        if (checkEmail == false) {
          alert('이메일 중복입니다');
          return checkEmail;
        }
        if (checkHp == false) {
          alert('전화번호 중복입니다');
          return checkHp;
        }
        console.log("checkPw  if==>" + checkPw);
        if (checkId == false) {
          alert('아이디 중복입니다');
          return checkId;
        }
        if (checkPw == false) {
          alert('비밀번호가 일치하지 않습니다');
          return checkPw;
        }

        if ($("input:checkbox[id='check_1']").is(":checked") != true) {
          alert('개인정보 처리방침 약관동의에 체크해 주세요');
          return false;
        }
        if ($("input:checkbox[id='check_2']").is(":checked") != true) {
          alert('서비스 이용약관 동의에 체크해 주세요');
          return false;
        }

        true;
      }

      /* 비밀번호 확인(pwd=re_pwd) */
      $(function () {
        $("#alert-success").hide();
        $("#alert-danger").hide();
        $("input").keyup(function () {
          var pwd = $("#pwd").val();
          var re_pwd = $("#re_pwd").val();
          if (pwd != "" || re_pwd != "") {
            if (pwd == re_pwd) {
              $("#alert-success").show();
              $("#alert-danger").hide();
              $("#submit").removeAttr("disabled");
              checkPw = true;
            } else {
              $("#alert-success").hide();
              $("#alert-danger").show();
              $("#submit").attr("disabled", "disabled");
              checkPw = false;
            }
          }
        });
      });

      /* 개인정보동의 체크박스 */
      $(".checkbox_group").on("click", "#check_all", function () {
        var isChecked = $(this).is(":checked");//
        $(this).parents(".checkbox_group").find('.normal').prop("checked", isChecked).val(isChecked ? 'Y' : 'N');
      });

      $(".checkbox_group").on("click", ".normal", function () {
        var is_checked = true;

        $(".checkbox_group .normal").each(function () {
          is_checked = is_checked && $(this).is(":checked");
        });

        $("#check_all").prop("checked", is_checked);
      });

      /* sms 선택동의 */
      $("#check_3").change(function () {
        console.log("sms 선택 동의 값 변경");
        if (this.checked) {
          $(this).prop('value', 'Y');
          console.log($(this).attr('value'));
        } else {
          $(this).prop('value', 'N');
          console.log($(this).attr('value'));
        }
      });

      /* emails 선택동의 */
      $("#check_4").change(function () {
        console.log("emails 선택 동의 값 변경");
        if (this.checked) {
          $(this).prop('value', 'Y');
          console.log($(this).attr('value'));
        } else {
          $(this).prop('value', 'N');
          console.log($(this).attr('value'));
        }
      });

      /* 이메일 중복검사 */
      $('#email').on("propertychange change keyup paste input", function () {

        $.ajax({
          url: 'emailCheck',
          type: 'post',
          dataType: "json",
          data: { "email": $('#email').val() },
          success: function (data) { //컨트롤러에서 넘어온 cnt값을 받음
            if (data == 0) { //cnt!=1 -> 사용 가능한 이메일
              $('.email_ok').css("display", "inline-block");
              $('.email_already').css("display", "none");
              checkEmail = true;
              console.log("checkEmail data==0" + checkEmail);
            } else { // cnt=1 -> 이미 존재하는 이메일
              $('.email_already').css("display", "inline-block");
              $('.email_ok').css("display", "none");
              checkEmail = false;
              console.log("checkEmail data!=0" + checkEmail);
            }
          },
          error: function () {
            alert("에러입니다");
          }
        });
      });

      /* 전화번호 하이픈 */
      function phoneNumber(input) {
        // 입력된 번호에서 "-"를 제거
        var hpNumber = input.value.replace(/-/g, '');

        // "-"를 포함한 적절한 포맷으로 번호를 변경
        if (hpNumber.length === 3) {
          hpNumber = hpNumber;
        } else if (hpNumber.length > 3 && hpNumber.length < 7) {
          hpNumber = hpNumber.slice(0, 3) + '-' + hpNumber.slice(3);
        } else if (hpNumber.length >= 7 && hpNumber.length < 11) {
          hpNumber = hpNumber.slice(0, 3) + '-' + hpNumber.slice(3, 6) + '-' + hpNumber.slice(6);
        } else if (hpNumber.length >= 11) {
          hpNumber = hpNumber.slice(0, 3) + '-' + hpNumber.slice(3, 7) + '-' + hpNumber.slice(7);
        }
        // 변경된 번호를 입력 필드에 반영
        input.value = hpNumber;
      }

      /* 전화번호 중복검사 */
      $('#hp').on("propertychange change keyup paste input", function () {
        var hpNumber = $('#hp').val().replace(/-/g, '');
        $.ajax({
          url: 'hpCheck',
          type: 'post',
          dataType: "json",
          // 	 data:{"hp" : hpNumber},
          data: { "hp": $('#hp').val() },
          success: function (data) { //컨트롤러에서 넘어온 cnt값을 받음
            if (data == 0) { ///cnt!=1 -> 사용 가능한 전화번호
              $('.hp_ok').css("display", "inline-block");
              $('.hp_already').css("display", "none");
              checkHp = true;
            } else { //cnt=1 -> 사용 가능한 전화번호
              $('.hp_already').css("display", "inline-block");
              $('.hp_ok').css("display", "none");
              checkHp = false;
            }
          },
          error: function () {
            alert("에러입니다");
          }
        });
      });
      /*=============================================================================================*/

      /*=========================================================================================
              작성자   |    개발 및 수정 일자    |    수정 내용
              조은유          23-06-27            
      ===========================================================================================*/


      /* 아이디 중복검사 */
      $('#id').on("propertychange change keyup paste input", function () {

        //        var space = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
        $.ajax({
          url: 'idCheck', //Controller에서 요청 받을 주소
          type: 'post', //POST 방식으로 전달
          dataType: "json",
          data: { "id": $('#id').val() },
          success: function (data) { //컨트롤러에서 넘어온 cnt값을 받는다 
            if (data == 0) { //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
              $('.id_ok').css("display", "inline-block");
              $('.id_already').css("display", "none");
              checkId = true;
            } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
              $('.id_already').css("display", "inline-block");
              $('.id_ok').css("display", "none");
              checkId = false;
            }
          },
          error: function () {
            alert("에러입니다");
          }
        });
      });
/*=============================================================================================*/
    </script>