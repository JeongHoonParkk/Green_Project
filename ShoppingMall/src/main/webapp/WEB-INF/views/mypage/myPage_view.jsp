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
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
   crossorigin="anonymous">
  
   
<style>
aside, section, footer {
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
   height: 800px;
   flex-grow: 1;
   padding: auto;
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

th, td { 
    border: 1px solid grey;
    border-collapse: collapse;
 } 

[type="button"] {
   background-color: transparent;
   border: 1px solid grey;
    border-collapse: collapse;
}

[type="reset"] {
   background-color: #F0F0F0;
   border: 1px solid grey;
    border-collapse: collapse;
    color: black;
    padding: 10px 60px; 
    
}

[type="reset"]:hover{
   background-color: black;
   color: white;
}

#modifyButton{
   background-color: black;
    color: white;
    padding: 10px 40px; 
    margin-left: 30%;
}
#modifyButton:hover{
   background-color: #F0F0F0;
   color: black;
}

#deleteButton{
   padding: 5px 16px;
   margin-left: 160px;
   margin-right: 0px;
}
#deleteButton:hover{
   background-color: #F0F0F0;
}

td{
   text-align:left;
   width: 700px;
   padding: 12px 0px 12px 15px;
}

#tdList{
   text-align:left;
   width: 200px;
   padding-left: 20px;
   background-color: #F0F0F0;
}

.addressBox{
   margin-bottom : 7px;
}

#alert-success{
   color: green;
   display: none;
   }
   
#alert-danger{
   color: red;
   display: none;
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
              <a href="/ShoppingMall/mainPage"> <span style="font-size: x-large; position: absolute; left: 0px; color: black; width: 200px;">Room & Bloom</span>
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
                <li><a href="/ShoppingMall/noticePage">Notice</a></li>
                <li><a href="/ShoppingMall/QnAPage">QnA</a></li>
                <!-- <li><a href="/ShoppingMall/tp_main_review.html">Review</a></li> -->
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
    본문   / 회원정보 수정 화면 출력부 / 회원정보 수정 출력 부분
    김효진    |   23-07-06       |       회원정보수정 표 css 적용 
    =================================================================
    -->
         <!-- 본문 -->
         <section id="section" style="width: 600px;">
            <article>
               <div id="article" style="height: auto;">

                  <div style="text-align: center; margin-bottom: 10px;">Profile </div>
                  <div style="text-align: center; font-size: small; color: grey; margin-bottom: 30px;">회원정보</div>
                  
      <form action=myPageModify method="post" name="modifyForm">
         <table border="1" align="center">
            <tr>
               <td id="tdList">아이디</td>
               <td><input type="text" id="id" name="id" value="${myPage_view.id}" readonly></td>
            </tr>
            <tr>
               <td id="tdList">새 비밀번호</td>
               <td><input type="password" id ="pwd" name="pwd" placeholder="비밀번호 입력">
                  (영문 대소문자/숫자/특수문자 중 3가지 이상 조합, 8~16자)
               </td>
            </tr>
            <tr>
               <td id="tdList">새 비밀번호 확인</td>
               <td>
                  <input type="password" id ="pwd2" placeholder="비밀번호 재입력">
                  <span id="alert-success">비밀번호가 일치합니다.</span>
                     <span id="alert-danger">비밀번호가 일치하지 않습니다.</span>
                </td>
            </tr>
            <tr>
               <td id="tdList">이름</td>
               <td>${myPage_view.name}</td>
            </tr>
            <tr>
               <td id="tdList">주소</td>
               <td>
                   <input type="text" name="pcode" id="zip-code" placeholder="우편번호" value="${myPage_view.pcode}" readonly class="addressBox">
                     <input type="button" onclick="execDaumPostcode()" value="우편번호 찾기 " style="background-color: transparent"><br>
                  <input type="text" name="loadaddr" id="address-1" value="${myPage_view.loadaddr}" placeholder="도로명주소" style="width: 300px" class="addressBox">&nbsp;도로명주소<br>
                  <input type="text" name="etcaddr" id="address-2" value="${myPage_view.etcaddr}" placeholder="상세주소" style="width: 300px">&nbsp;상세수조 (선택입력가능)
               </td>
            </tr>
            <tr>
               <td id="tdList">전화번호</td>
               <td>
               <input type="text" name="hp" oninput="hypenTel(this)" placeholder="전화번호 입력" maxlength="13" value="${myPage_view.hp}"/>
               </td>
            </tr>
            <tr>
               <td id="tdList">SMS 수신여부</td>
               <td>         
               <c:if test="${myPage_view.sms eq 'Y'}">         
                  <input type="radio" name="sms" id="sms" value="Y" checked="checked"/>수신함</label>
                  <input type="radio" name="sms" id="sms" value="N" />수신안함</label>
               </c:if>
               <c:if test="${myPage_view.sms eq 'N'}">         
                  <input type="radio" name="sms" id="sms" value="Y" />수신함</label>
                  <input type="radio" name="sms" id="sms" value="N" checked="checked"/>수신안함</label>
               </c:if>
                  <div>
                  <br>
                  쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.
                  </div>
               </td>
            </tr>
            <tr>
               <td id="tdList">이메일</td>
               <td><input type="text" name="email" value="${myPage_view.email}"></td>
            </tr>
         	<tr>
               <td id="tdList">이메일 수신여부</td>
               <td>                  
             	 <c:if test="${myPage_view.emails eq 'Y'}">         
                  <input type="radio" name="emails" id="emails" value="Y" checked="checked"/>수신함
                  <input type="radio" name="emails" id="emails" value="N" />수신안함
               	</c:if>
               	<c:if test="${myPage_view.emails eq 'N'}">         
                  <input type="radio" name="emails" id="emails" value="Y" />수신함
                  <input type="radio" name="emails" id="emails" value="N" checked="checked"/>수신안함
               	</c:if>
               	  <div>
               	  <br>
               	  쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.
               	  </div>
               </td>
            </tr>
            <tr height="80">
               <td colspan="2" align="center" style="border-color: transparent;">
                  <input type="button" onclick="myPageModify()" value="회원정보수정" id="modifyButton">
                  <input type="reset" value="취소">
<!--                <button type="button" onclick="removeMember();" align="right" > 회원탈퇴 </button> -->
                  <a href="memberDeleteView?id=${myPage_view.id}"><input type="button" value="회원탈퇴" id="deleteButton"></a>
               </td>
            </tr>
         </table>
      </form>
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
                            <li><a href="/ShoppingMall/login" style="color: black;">Cart</a></li>
                          </c:if>
                          <c:if test="${ dto != null }">
                             <li><a href="/ShoppingMall/Gu_cart" style="width: 200px; color: black;">Cart</a></li>
                          </c:if>
                       </ul>
                </div>
   <!-- 
    =================================================================
    로그인시 회원 이름 보이게 수정
      조은유    |   23-06-29       |                          
    =================================================================
    -->
               <div class="login"
                  style="position: absolute; top: 160px; right: 0px;">
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
<!--                  <div class="search" style="position: absolute; top: 600px; right: 10px;"> -->
<!--                    <form method="post" action="#"> -->
<!--                        <fieldset> -->
<!--                            <input type="text" id="search"> -->
<!--                      <a href="#"> -->
<!--                       <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"> -->
<!--                           <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/> -->
<!--                       </svg> -->
<!--                   </a> -->
<!--               </fieldset>     -->
<!--             </form> -->
          </div>
         </aside>

              
            </div>
          </aside>
        </div>
      </main>
      <footer id="footer" style="font-family: notosans; text-align: left;">
        <a href="/ShoppingMall/mainPage" style="color: black;">Room & Bloom</a> <br>
        <p style="line-height: 2em;">
          <a href="/ShoppingMall/#">About us</a>
        </p>
      </footer>
      <div style="position: fixed; bottom: 5px; left: 50%; right: 50%;">
        <a href="#" style="font-size: xx-large;">^</a>
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
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"></script>
</body>
</html>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <!-- ===============================================================
       본문   / 회원정보 수정 화면 출력부 / 상품 가격및 이미지 출력 부분
       김효진    |   23-07-06       |       pwd=pwd2 실시간 유효성 검사 구현 완료
    =================================================================-->
<script type="text/javascript">
/* pwd=pwd2 실시간 유효성 검사 구현 */
$(function(){
    $("#alert-success").hide(); 
    $("#alert-danger").hide();
    $("input").keyup(function(){
        var pwd=$("#pwd").val();
        var pwd2=$("#pwd2").val();
        if(pwd != "" || pwd2 != ""){
            if(pwd == pwd2){
                $("#alert-success").show();
                $("#alert-danger").hide();
                $("#submit").removeAttr("disabled");
            }else{
                $("#alert-success").hide();
                $("#alert-danger").show();
                $("#submit").attr("disabled", "disabled");
            }    
        }
    });
});
</script>
<!--============================================================================-->
<script type="text/javascript">

   //다음 우편검색 서비스
    function execDaumPostcode() {
        new daum.Postcode( {
          oncomplete: function( data ) {
            document.getElementById( 'zip-code' ).value = data.zonecode;
            document.getElementById( 'address-1' ).value = data.address;
          }
        } ).open();
      }
   
   //새비밀번호, 새비밀번호 확인 일치
   function myPageModify(){
      let pwd = document.getElementById("pwd").value;
      let pwd2 = document.getElementById("pwd2").value;
      
      if (pwd == pwd2) {
      modifyForm.submit();         
      }else {
         alert("비밀번호가 일치하지 않습니다.")
      }
   }
   
   //전화번호 자동 하이픈
     const hypenTel = (target) => {
        target.value = target.value
          .replace(/[^0-9]/g, '')
          .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
       }

      function fn_submit() {
         
          var pwd = document.getElementById("pwd").value;
             var pwd2 = document.getElementById("pwd2").value;
             
             if (pwd === "" || pwd2 === "") {
                 alert("비밀번호를 입력해주세요.");
                 return;
             }
             
             if (pwd !== pwd2) {
                 alert("비밀번호가 일치하지 않습니다.");
                 return;
             }
             
             alert('회원정보수정 완료');
//              document.getElementById("modifyForm").submit();
//              location.href = 'myPageModify?id=${myPage_view.id}'; // id 파라미터 추가
           }
         
//          var formData = $("#frm").serialize();
         
//          $.ajax({
//             type: "post",
//             data: formData,
//             url: "myPageModify",
//             dataType: "json",
//             function(data) {
//                alert("저장완료");
//                location.href = "myPage_view?id=${myPage_view.id}";
// //                location.href = "myPageView";
//             },
//             error: function() {
//                alert("저장에 실패했습니다.");
//             }
//          });
//       }
</script>