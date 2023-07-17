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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<style>
aside, footer {
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

.btn{
	border: 1px solid rgb(207, 207, 207);
	border-radius: 0px;
	width: 100px;
	height: 30px;
	line-height: 10px;
	background-color: #F0F0F0;
}

.btn:hover{
	border: 1px solid grey;
	background-color: #F0F0F0;
}

th, td {
 	border: 1px solid rgb(207, 207, 207); 
	border-collapse: collapse;
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
					<span style="font-size: x-large; position: absolute; left: 0px; color: black; width: 200px;">
						Room & Bloom</span>
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

	<!-- 
	=================================================================
	notice/content_view
	조은유    |     23-07-08     |              프론트	화면 배열 , css 적용
	=================================================================
	-->
	
			<!-- 본문 -->
			<section id="section">
				<article>
					<div id="article" style="margin-bottom: 150px;">

						<div style="text-align: center; margin-bottom: 10px;">Notice</div>
						<div style="text-align: center; font-size: small; color: grey;">공지사항</div>
						<!-- <h1 align="center">NOTICE 관리</h1> -->
						<br>

						<table class="box" width="850px" border="1" align="center">
							<form method="post" action="noticeModify">
								<input type="hidden" name=noticode value="${content_view.noticode}">
								<tr>
									<!-- <td> -->
									<%-- <input type="text" name="notititle" value="${content_view.notititle}">	 --%>
									<!-- </td> -->
									<td style="border-bottom-color: transparent;">
									<input type="text" name="notititle" value="${content_view.notititle}" size="95" style="border: none; margin-top: 5px; padding: 20px;">
									</td>
								</tr>
								<tr>
									<td>
										<div style="padding: 0 0 20px 20px;">
										<span style="color: grey;">No.</span> ${content_view.noticode}									
										</div>
									</td>
								</tr>
<!-- 								<tr> -->
<%-- 									<td>${content_view.noticode}</td> --%>
<!-- 								</tr> -->
								<!-- <tr>  -->
								<!-- 	<td>이름</td> -->
								<%-- 	<td>${content_view.bname}</td> --%>
								<!-- 	<td>  -->
								<%-- 	<input type="text" name="notiauth" value="${content_view.notiauth}"> --%>
								<!-- 	</td> -->
								<!-- </tr> -->
								
<!-- 								<tr> -->
<!-- 									<td align="left">내용</td> -->
<%-- 									<td>${content_view.bcontent}</td> --%>
<!-- 									<td> -->
<%-- 									<input type="text" name="noticont" value="${content_view.noticont}"> --%>
<!-- 									</td> -->
<!-- 								</tr> -->
								<tr>
									<td style="padding:20px;">
										<div style="width: 300px; height: 200px;">
										${content_view.noticont}										
										</div>
									</td>
								</tr>
								<tr height="70px;">
									<td style="border-color:transparent;">
										<a href="list"><input type="button" value="목록보기" class="btn"></a>
									</td>
								</tr>
							</form>
						</table>
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
					<div class="cart"
						style="position: absolute; top: 80px; right: 0px;">
<!-- 						<ul> -->
<!-- 							<li><a href="#" style="width: 200px;">Cart - 0</a></li> -->
<!-- 						</ul> -->
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
			        <div class="search" style="position: absolute; top: 600px; right: 10px;">
<!-- 			          <form method="post" action="#"> -->
<!-- 			              <fieldset> -->
<!-- 			                  <input type="text" id="search"> -->
<!-- 	                  <a href="#"> -->
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>
