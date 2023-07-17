<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
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
aside, section, footer {
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

#name, #hp {
	width: 250px;
	height: 38px;
}

#search {
	border-top: none;
	border-left: none;
	border-right: none;
}

#modal.modal-overlay {
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	top: 0;
	display: none;
	/*             flex-direction: column; */
	/* 팝업창 가운데로 */
	align-items: center;
	/* 팝업창 가운데로 */
	justify-content: center;
	/* 라운드처리 */
	box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
	backdrop-filter: blur(1.5px);
	-webkit-backdrop-filter: blur(1.5px);
}

#modal .modal-window {
	background: #ffffff;
	box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
	border-radius: 10px;
	border: 1px solid gray;
	width: 400px;
	height: 250px;
	position: relative;
	top: -100px;
	padding: 10px;
}

#modal .title {
	padding-left: 10px;
	display: inline;
	color: black;
}

#modal .title h2 {
	display: inline;
}

#modal .close-area {
	display: inline;
	float: right;
	padding-right: 10px;
	cursor: pointer;
	text-shadow: 1px 1px 2px gray;
	color: white;
}

#modal .content {
	margin-top: 70px;
	padding: 0px 10px;
	color: black;
}

button {
	width: 350px;
	height: 44px;
/* 	background-color: black; */
	color: black;
	border-bottom: none;
	border-left: none;
	border-top: none;
	border-right: none;
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
						<li><a href="#">BEST</a></li>
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
						<li>Mon-Fri 10:00-19:00 <br> Weekend,Holiday off
						</li>
					</ul>
				</div>

			</aside>

			
<!-- =========================================================================================
	    아이디 찾기 화면 
	    조은유    |   23-06-28       |                         아이디 찾기 화면
===========================================================================================-->
    
			<!-- 본문 -->
			<section id="section" style="width: 600px;">
				<article>
					<div id="article">
						<main class="form-signin w-100 m-auto">
							<!--파일 불러오기-->
							<%@ include file="./Modal.jsp"%>

							<div class="w3-content w3-container w3-margin-top">
								<div class="w3-container w3-card-4">

									<div class="w3-center w3-large w3-margin-top">Search ID</div>
									<br>
									<br>
									<div align="center">
										<table>
											<tr height="50px">
												<td width="100px" align="left">Name</td>
												<td><input class="w3-input" type="text" id="name"
													name="name" placeholder="이름을 입력해주세요." required></td>
											</tr>
											<tr height="50px">
												<td width="100px" align="left">Tel</td>
												<td><input class="w3-input" type="text" id="hp" onkeyup="phoneNumber(this)"
													name="hp" placeholder="핸드폰 번호를 입력해주세요." required></td>
											</tr>
										</table>

										<br>

										<table>
											<tr height="60px">
												<td>
													<button type="button" id='find_id' onclick="findId_click()"
														class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">Find</button>
												</td>
											</tr>
											<tr height="60px">
												<td>
													<button type="button" onclick="history.go(-1);"
														class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">Cancel</button>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>

						</main>
					</div>
				</article>
			</section>


			<!-- 우측 사이드바 -->
			<aside id="aisdeRight">
				<div class="rightbar">
					<div class="cart"
						style="position: absolute; top: 80px; right: 0px;">
						<ul>
							<li><a href="#" style="color: black; width: 200px;">Cart
									- 0</a></li>
						</ul>
					</div>
					<div class="login"
						style="position: absolute; top: 160px; right: 0px;">
						<ul id="log_ul" style="width: 200px;">
							<li><a href="loginPage_1">Log in</a></li>
							<li><a href="registerPage_1">Register</a></li>
							<li><a href="#">Order</a></li>
							<li><a href="#">My Page</a></li>
						</ul>
					</div>
					<!-- 검색기능 -->
					<div class="search"
						style="position: absolute; top: 600px; right: 10px;">
						<form method="post" action="#">
							<fieldset>
								<input type="text" id="search"> <a href="#"> <svg
										xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                          <path
											d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- =========================================================================================
           로그인 및 회원가입 구현
           작성자   |    개발 및 수정 일자    |    수정 내용
           김효진          23-06-26           로그인   아이디 찾기 기능 구현 완료
           김효진          23-07-04           로그인   아이디 찾기 Tel 입력시 하이픈 처리 완료
===========================================================================================-->
<script>
   /* 아이디 찾기 */ 
   function findId_click(){
      var name=$('#name').val()
      var hp=$('#hp').val()
      $.ajax({
         url:"./find_id",
         type:"POST",
         data:{"name":name, "hp":hp} ,
         success:function(data){
            if(!data){
                console.log("Name0:", name);
                console.log("Phone0:", hp);
                console.log("Response data is empty");
                console.log("Response data:", data);
               $('#id_value').text("회원 정보를 확인해주세요!");
               $('#name').val('');
               $('#hp').val('');
            } else {
               console.log("Name=:", name);
                  console.log("Phone=:", hp);
                 console.log("Response data:", data);
               $('#id_value').text(data);
               $('#name').val('');
               $('#hp').val('');
               
            }
         },
          error:function(){
                   alert("에러입니다");
               }
      });
   };

const modal = document.getElementById("modal")
const btnModal = document.getElementById("find_id")

btnModal.addEventListener("click", e => {
    modal.style.display = "flex"
})

    
const closeBtn = modal.querySelector(".close-area")
closeBtn.addEventListener("click", e => {
    modal.style.display = "none"
})

modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("modal-overlay")) {
        modal.style.display = "none"
    }
})

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
<!-- =============================================================================================    -->
</script>
