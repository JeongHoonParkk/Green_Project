<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        section,
        footer {
          margin: 3px;
          text-align: center;
          font-family: notosans;
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

        /* .thumbnail{
padding: 10px;
width: 30%;
display: inline-block;
} */
        section {
          margin-top: 40px;
        }

        #log_ul {
          font-size: small;
        }

        a:hover {
          color: black;
        }

        .thumbnail {
          float: left;
        }

        /* section{
border: 2px solid red;
} */
        #wrap {
          /* border: 3px dashed pink; */
          height: auto;
          margin: 100px;

        }

        #prdInfo {
          border: solid 1px black;
        }

        .prdInfo2 {
          padding: 100px 50px;
        }

        .underline {
          border-left-width: 0px;
          border-right-width: 0px;
          border-top-width: 0px;
          border-bottom-width: 1px;
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
              <a href="mainPage"> <span
                  style="font-size: x-large; position: absolute; left: 0px; color: black; width: 200px;">Room
                  & Bloom</span>
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
                <li>Mon-Fri 10:00-19:00 <br> Weekend,Holiday off
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
          <!-- 본문 -->
          <section id="section" style="width: 600px;">
            <article>
              <div id="article" style="height: auto;">

                <div id="wrap">
                  <div id="con">


                    <div id="contents">
                      <div class="detailArea">


                        <!--                             @@@@@@@@@@@@@@@@@여기가 진짜@@@@@@@@@@@@@ -->
                        <form id="frm">
                          <table style="width: 100%;">
                            <tr>
                              <td style="width: 50%;">
                                <div class="thumbnail" style="height: 400px; float: left; ">
                                  <!-- 상품 이미지 사진 -->
                                  <img src="${Gu_ProductView.proimg}" width="100%" height="100%"
                                    style="border-radius: 10%" alt="이미지">
                                </div>
                              </td>



                              <td style="width: 50%;">
                                <div class="infoArea" style=" height: 400px;">
                                  <table style="text-align: left; margin-left: 100px; width: 100%; height: 100%">
                                    <tr>
                                      <td colspan="2" width="200">
                                        <input id="procode" type="hidden" value="${Gu_ProductView.procode}">
                                        <input id="catecode" type="hidden" value="${Gu_ProductView.catecode}">
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>상품이름</td>
                                      <td id="productName" colspan="2">
                                        ${Gu_ProductView.proname}
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>상품가격</td>
                                      <td colspan="2"><span id="proprice">${Gu_ProductView.proprice}</span>
                                        원
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>할인가격</td>
                                      <td colspan="2"><span id="prosale">${Gu_ProductView.prosale}
                                        </span>원</td>
                                    </tr>
                                    <tr>
                                      <td>상품색상 선택</td>
                                      <td colspan="2">
                                        <select id="optionColor">
                                          <option class="x" selected="selected" value="">
                                            [필수]
                                            option</option>
                                          <!--                         	<option class="x" value="[필수] option" selected="selected">[필수] option</option> -->
                                          <option value="" class="x">
                                            ------------</option>
                                          <optgroup label="상품옵션">
                                            <c:forEach var="color" items="${Gu_ProductView.colorOptions}"
                                              varStatus="status">
                                              <c:if test="${not empty color}">
                                                <option id="color${status.index + 1}" value="${color}">
                                                  ${color}</option>
                                              </c:if>
                                            </c:forEach>
                                          </optgroup>
                                        </select>
                                      </td>
                                    </tr>
                                    <tr id="insertRow">
                                      <td>상품사이즈 선택</td>
                                      <td colspan="2">
                                        <select id="optionSize">
                                          <option class="x" selected="selected" value="">
                                            [필수]
                                            option</option>
                                          <option value="" class="x">
                                            ------------</option>
                                          <optgroup label="상품옵션">
                                            <c:forEach var="size" items="${Gu_ProductView.sizeOptions}"
                                              varStatus="status">
                                              <c:if test="${not empty size}">
                                                <option id="size${status.index + 1}" value="${size}">
                                                  ${size}</option>
                                              </c:if>
                                            </c:forEach>
                                          </optgroup>
                                        </select>
                                      </td>
                                    </tr>
                                    <tr id="addRow">
                                      <td colspan="3">
                                        Total(총 상품 금액) : <span id="totalPrice">
                                        </span> 원 (<span id="totalQuantity"></span>개)
                                      </td>
                                    </tr>
                                    <tr>
                                      <td colspan="3" align="right">
                                        <div style="float: left;">
                                          <input id="order" type="button" value="주문" onclick="orderPage()">
                                          <!--                                                                                     <input id="order" type="button" value="주문" onclick="test()"> -->
                                          &nbsp;&nbsp;
                                          <input id="cart_btn" type="button" value="장바구니">
                                          &nbsp;&nbsp;
                                        </div>




                                        <input type="hidden" id="proprice" name="proprice"
                                          value="${ProductView.proprice}">
                                        <input type="hidden" id="proname" name="proname" value="${ProductView.proname}">
                                        <input type="hidden" id="procode" name="procode" value="${ProductView.procode}">
                                      </td>
                                    </tr>

                                  </table>
                                </div>
                              </td>
                            </tr>
                          </table>
                        </form>


                        <!-- 여기가 주문버튼 끝 -->
                        <div class="product">
                          <div id="prdDetail" style="height: 1000px; margin-top: 200px">
                            <!-- 상품 이미지 들어갈 부분/ 임의로 height 1000으로 잡아놨음 -->
                            상품 상세이미지 들어가야 함
                            ${Gu_ProductView.proinfo}
                          </div>
                        </div>
                        <div id="prdInfo">
                          <div class="prdInfo2">
                            <div class="cont">
                              <h3>상품결제정보</h3>
                              고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다. 확인과정에서 도난 카드의 사용이나
                              타인 명의의 주문등
                              정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다. &nbsp;
                              <br>
                              <br>
                              무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면
                              됩니다. &nbsp;
                              주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로 입금을 하셔야
                              하며&nbsp;입금되지
                              않은 주문은 자동취소 됩니다.
                              <div>
                                <br>
                                <br>
                                <br>
                              </div>
                            </div>
                            <div class="cont">
                              <h3>배송정보</h3>
                              - 산간벽지나 도서지방은 별도의 추가금액을 지불하셔야 하는 경우가 있습니다.
                              <br>
                              <br>
                              - 주문하신 상품은 결제 완료 후 1-3일 내 출고됩니다.
                              <br>
                              <br>
                              - 오후 5시 이전 주문 건은 재고가 있는 상품에 한해 당일 출고됩니다.
                              <br>
                              <br>
                              - 거래처 사정으로 입고 및 제작이 지연되는 상품이 포함되어 있을 시 부득이하게 출고가 지연될 수 있으며
                              따로 지연 안내 연락을 드립니다.
                              <br>
                              <br>
                              - 2만원 이상 결제 시 무료배송입니다.
                              <div>
                                <br>
                                <br>
                                <br>
                              </div>
                            </div>
                            <div class="cont">
                              <h3>교환 및 반품정보</h3>
                              <br>
                              <h4>교환 및 반품 주소</h4>
                              - [04055] 서울특별시 마포구 홍익로2길 35 (서교동) 346-27 1층 (주) 래셔널하이엔드
                              <br>
                              <br>
                              - 제품 수령 후 7일 이내 고객센터[02.336.4363] 전화, 게시판 문의, 교환 및 반품 신청 등으로
                              접수
                              <br>
                              <br>
                              &nbsp; * 여행, 출장 등 개인적인 사유로 기간이 지날 경우 처리가 불가합니다. 모든 고객님들께
                              동등하게 적용되는 부분이니 양해 부탁드립니다.
                              <br>
                              <br>
                              - 교환 및 반품 의사를 밝혀주시면 눅윤에서 택배사 측에 방문 수거 요청을 해드립니다.
                              <br>
                              <br>
                              - 수령일로부터 7일 이내 미접수 및 임의로 제품을 보내주실 경우 반송될 수 있으니 주의 바랍니다.
                              <br>
                              <br>
                              <strong>- 상품 확인이 가능한 포장된 투명 폴리 비닐 개봉 시 반품이 어렵습니다.</strong>
                              <div>
                                <br>
                                <br>
                                <br>
                              </div>
                              <br>
                            </div>
                            <div class="cont">
                              <h3>교환 및 반품이 불가능한 경우</h3>
                              - 포장된 투명 폴리 비닐 개봉하여 상품가치가 상실된 경우
                              - 화면 해상도로 인한 색상 차이 및 기재된 상세 사이즈의 미세한 오차
                              - 고객 과실로 인한 상품의 훼손
                              - 관리법 미숙으로 인한 변색
                              - 생산시기에 따른 색상 차이
                            </div>
                            <div>
                              <br>
                              <br>
                              <br>
                            </div>
                            <div class="cont">
                              <h3>적립금 지급 안내</h3>
                              <br>
                              <br>
                              - 신규 회원 가입 시 적립금 2천원 지급
                              - 적립금 5천원 이상 소유 시 사용할 수 있습니다.
                              - 상품 구매 합계액 20,000원 이상일 시 적립금 사용 가능합니다.
                              - 상품 후기 작성 시 적립금 500원 지급, 사진 후기 작성 시 적립금 1,000원 지급
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div style="height: 200px;">
                    </div>
                    <div id="prdReview">
                      <div class="board">
                        <div class="board2">
                          <table border="1">
                            <tr align="right">
                              <td width="100%" align="left">
                                <h4>Review</h4>
                              </td>
                              <td>
                                <span style="float: right;">
                                  <input type="button" value="Write" onclick="">
                                </span>
                              </td>
                              <td>
                                <span style="float: right;">
                                  <input type="button" value="All View" onclick="">
                                </span>
                              </td>
                            </tr>
                          </table>
                          <div>
                            <br>
                            <br>
                          </div>
                          <table border="1" class="rv" style="width: 100%;">
                            <tr>
                              <td width="80px">No</td>
                              <td width="200px">Subject</td>
                              <td width="100px">Writer</td>
                              <td width="100px">Date</td>
                              <td width="100px">Hit</td>
                            </tr>
                            <!-- 리뷰 내용 들어갈 공간 -->
                            <tr>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td></td>
                            </tr>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>



                  <input type="hidden" name="proprice" value="${Gu_ProductView.proprice}">
                  <input type="hidden" name="proname" value="${Gu_ProductView.proname}">
                  <input type="hidden" name="procode" value="${Gu_ProductView.procode}">


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
                    <li><a href="login" style="color: black;">Cart</a></li>
                  </c:if>
                  <c:if test="${ dto != null }">
                    <li><a href="Gu_cart" style="width: 200px; color: black;">Cart</a></li>
                  </c:if>
                </ul>
              </div>
              <!-- 
    =================================================================
    로그인시 회원 이름 보이게 수정
      조은유    |   23-06-29       |                          
    =================================================================
    -->
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
              <!-- 			        <div class="search" style="position: absolute; top: 600px; right: 10px;"> -->
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

    </body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



    <!--        주문 페이지 이동시 해당 상품 장바구니있는지 확인 -->
    <script type="text/javascript">
      let procode2 = document.getElementById("procode").value;

      function checkCart() {
        var form = $('#frm').serialize();

        $.ajax({
          type: 'POST',
          url: 'checkCart',
          data: form,
          success: function (response) {
            if (response === '') {
              alert('주문페이지로 이동합니다.');
              var form2 = document.createElement('form');


              // procode 입력 필드 추가
              var procodeInput = document.createElement('input');
              procodeInput.setAttribute('type', 'hidden');
              procodeInput.setAttribute('name', 'procode');
              procodeInput.setAttribute('value', procode2);
              form2.appendChild(procodeInput);

              form2.setAttribute('method', 'POST');
              form2.setAttribute('action', 'orderPage');
              // form을 body에 추가하고 제출
              document.body.appendChild(form2);
              form2.submit();
              // 	          form2.dispatchEvent(new Event('submit'));	
            } else if (response === 'notnull') {
              alert("장바구니에 같은 상품이 존재합니다. 장바구니로 이동합니다.");
              window.location.href = 'ShoppingCart';
            }
          },
          error: function (xhr, status, error) {
            console.log("Error:", error);
          }
        });
      }
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


    <!--         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//////// -->

    <!--         장바구니 버튼 누를시 상품 장바구니에 있는지 확인 -->
    <script type="text/javascript">
      var priceText = parseInt($("#proprice").text());
      $("#proprice").text(priceText.toLocaleString());
      var saleText = parseInt($("#prosale").text());
      $("#prosale").text(saleText.toLocaleString());

      var cnt = 0;

      $("#optionColor").change(function () {
        $("#optionSize").change(function () {
        });
      });

      $("#optionSize").change(function () {
        var optionColor = $("#optionColor option:selected").val();
        var optionSize = $("#optionSize option:selected").val();

        if (optionSize != "" && optionColor == "") {
          alert("색상을 먼저 선택하셔야 합니다.");
          $("#optionColor").val("").prop("selected", true);
          $("#optionSize").val("").prop("selected", true);
        } else {
          var insertHTML = "";
          var opColor = $("#optionColor option:selected").val();
          var opSize = $("#optionSize option:selected").val();

          var propriceText = $("#proprice").text();
          // 	        var proprice = parseInt(propriceText);
          var proprice = parseInt(propriceText.replace(/[^0-9]/g, ''));
          // 	        console.log(proprice);

          var prosaleText = $("#prosale").text();
          console.log(prosaleText);
          // 	        var prosale = parseInt(prosaleText);
          var prosale = parseInt(prosaleText.replace(/[^0-9]/g, ''));
          console.log(prosale);

          var totalCnt = ($("#optionColor option:not(.x)").length) * ($("#optionSize option:not(.x)").length);

          var isAlreadySelected = false;
          $("tr[id^=productRow]").each(function () {
            // 	        	console.log("비교 실행");
            var row = $(this);
            var rowColor = row.find("[id^=colorN]").text();
            var rowSize = row.find("[id^=sizeN]").text();
            console.log("@@@선택색상 ===>>" + opColor + "  ###비교색 ===>>>" + rowColor);
            console.log("@@@선택사이즈 ===>>" + opSize + "  ###비교사이즈 ===>>>" + rowSize);
            if (opColor === rowColor && opSize === rowSize) {
              isAlreadySelected = true;
              return false;
            }
          });

          if (isAlreadySelected) {
            alert("이미 선택한 상품입니다.");
            $("#optionColor").val("").prop("selected", true);
            $("#optionSize").val("").prop("selected", true);
            return false;
          }

          cnt++;
          insertHTML = '<tr id="productRow' + cnt + '">'
            + '<td>' + $("#productName").text()
            + '<div id="addInfo' + cnt + '">'
            + '<div><br> - 색상: <span id="colorN' + cnt + '">' + opColor + '</span>/</div>'
            + '<div> - 사이즈: <span id="sizeN' + cnt + '">' + opSize + '</span></div>'
            + '<div id="product">'
            // 여기가 총 수량 부분
            + '<input id="quantityN' + cnt + '" type="text" value="1" size="2" maxlength="2">&nbsp;&nbsp;&nbsp;&nbsp;'
            + '<a href="#" class="quantityUp" data-row="' + cnt + '"><img src="resources/plus.png" width="20px" height="20px" alt="up"></a>&nbsp;&nbsp;&nbsp;&nbsp;'
            + '<a href="#" class="quantityDown" data-row="' + cnt + '"><img src="resources/minus.png" width="20px" height="20px" alt="down"></a>&nbsp;&nbsp;&nbsp;&nbsp;'
            + '<a href="#" class="proRemove" data-row="' + cnt + '"><img src="resources/delete.png" width="20px" height="20px" alt="remove"></a></td>'
            + '<td colspan="2"><span class="proTotal"></span> 원</td>'
            + '</div></div></tr>';

          var addRow = $("#addRow");
          $(insertHTML).insertBefore(addRow);

          $("#optionColor").val("").prop("selected", true);
          $("#optionSize").val("").prop("selected", true);

          $(".proRemove[data-row=" + cnt + "]").click(function () {
            var rowId = $(this).closest("tr").attr("id");
            $("#" + rowId).remove();
            totalPrice();
          });

          $("#quantityN" + cnt).change(function () {
            updateAmount($(this));
          });

          $(".quantityUp[data-row=" + cnt + "]").click(function () {
            increaseQuantity($(this).data("row"));
          });

          $(".quantityDown[data-row=" + cnt + "]").click(function () {
            decreaseQuantity($(this).data("row"));
          });

          updatePrice();
          totalPrice();
        }
      });

      function increaseQuantity(row) {
        var quantityElement = $("#quantityN" + row);
        var quantity = parseInt(quantityElement.val());
        if (!isNaN(quantity)) {
          quantity += 1;
          quantityElement.val(quantity);
          updateAmount(quantityElement);
        }
      }

      function decreaseQuantity(row) {
        var quantityElement = $("#quantityN" + row);
        var quantity = parseInt(quantityElement.val());
        if (quantity > 1 && !isNaN(quantity)) {
          quantity -= 1;
          quantityElement.val(quantity);
          updateAmount(quantityElement);
        }
      }


      function totalPrice() {
        var total = 0;
        var totalQuantity = 0;

        $("span[class^=proTotal]").each(function () {
          var quantity = parseInt($(this).closest("tr").find("input[id^=quantityN]").val());
          //         console.log("총갯수 = "+quantity);
          var text = $("#prosale").text();
          var price = parseInt(text.replace(/[^0-9]/g, ''));
          console.log("총 금액 = " + price);
          var subTotal = quantity * price;
          //         console.log("subTotal = "+subTotal);

          total += subTotal;
          totalQuantity += quantity;
          // 	        console.log("토탈금액 = "+total);        
          // 	        console.log("토탈갯수 = "+totalQuantity);        
        });
        // 		    $("#total_Price").html(total.toLocaleString());
        // 		    $("#total_Quantity").html(totalQuantity.toLocaleString());
        $("#totalPrice").text(total.toLocaleString());
        $("#totalQuantity").text(totalQuantity.toLocaleString());
      }

      function updatePrice() {
        $("input[id^=quantityN]").each(function () {
          var row = $(this).closest("tr");
          // 	        console.log("row = "+row);                
          var quantity = parseInt($(this).val());
          // 	        console.log("quantity = "+quantity);                
          var pricee = $("#prosale").text();
          var price = parseInt(pricee.replace(/[^0-9]/g, ''));
          // 	        console.log("price = "+price);                
          if (!isNaN(quantity) && !isNaN(price)) {
            var total = quantity * price;
            row.find(".proTotal").text(total.toLocaleString());
          }
        });
        totalPrice();
      }

      function updateAmount(quantityElement) {
        updatePrice();
      }

      var procode = ${ Gu_ProductView.procode };

      var userid = '<%= request.getAttribute("idValue") %>';


      // 	장바구니 버튼
      $("#cart_btn").on("click", function (e) {
        if (userid != null) {
          var promises = [];
          $("tr[id^=productRow]").each(function () {
            var row = $(this);

            var opColor = row.find("[id^=colorN]").text();
            var opSize = row.find("[id^=sizeN]").text();
            console.log("userid ==> " + userid);
            console.log("procode ==> " + procode);
            console.log("opColor ==> " + opColor);
            console.log("opSize ==> " + opSize);
            var amount = row.find("input[id^=quantityN]").val();

            var form = {
              userid: userid,
              procode: procode,
              color: opColor,
              psize: opSize,
              amount: amount
            };
            var promise = $.ajax({
              url: "cartAdd",//호출할 url
              type: 'POST',//호출방식
              data: form,//서버에 보낼 데이터
            });

            promises.push(promise);
          });
          Promise.all(promises).then(function (results) {
            var result = results[0];

            if (result == 0) {
              alert("장바구니에 추가되지 않았습니다. 다시 시도해주세요.");
            } else if (result == 1) {
              alert("장바구니에 추가되었습니다.")

              //모달


            } else if (result == 2) {
              alert("장바구니에 동일한 상품이 있습니다.");
              // 			장바구니로 이동하시겠습니까?
              cancel();
              //		} else if (result == 5) {
              // 			alert("로그인을 해주세요");					
            }
          }).catch(function (error) {
            alert("오류");

          });
        } else {
          alert("로그인이 필요합니다.")
          location.href = "login";
        }
      });


      function test() {
        var formData = []; // form 데이터를 담을 배열 선언
        var procode = ${ Gu_ProductView.procode };
        $("tr[id^=productRow]").each(function () {
          var row = $(this);

          var opColor = row.find("[id^=colorN]").text();
          var opSize = row.find("[id^=sizeN]").text();

          // form 데이터 객체 생성 및 배열에 추가
          var data = {
            color: opColor,
            psize: opSize,
            procode: procode
          };
          formData.push(data);
        });

        // 배열에 담긴 form 데이터 확인
        console.log(formData);

        // 여기서부터 추가적인 처리 수행
        // ...

        $.ajax({
          url: 'your-url', // 컨트롤러의 URL
          type: 'POST',
          data: JSON.stringify(formData), // 데이터를 JSON 형식의 문자열로 변환하여 전송
          contentType: 'application/json', // 데이터의 내용 유형을 JSON으로 설정
          success: function (response) {
            // 요청 성공 시 실행할 동작
            alert("성공")
          },
          error: function (xhr, status, error) {
            // 요청 실패 시 실행할 동작
          }
        });
      }

    </script>


    <!--         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//////// -->






    <!-- 		주문페이지 이동하면서 값 들고 이동함 -->
    <script type="text/javascript">
      function orderPage() {
        var procode = ${ Gu_ProductView.procode };
        var promises = [];

        $("tr[id^=productRow]").each(function () {
          var row = $(this);

          var opColor = row.find("[id^=colorN]").text();
          var opSize = row.find("[id^=sizeN]").text();
          var amount = row.find("input[id^=quantityN]").val();

          var form = {
            userid: userid,
            procode: procode,
            color: opColor,
            psize: opSize,
            amount: amount
          };
          var promise = $.ajax({
            url: "cartAdd", // 호출할 URL
            type: 'POST', // 호출 방식
            data: form // 서버에 보낼 데이터
          });

          promises.push(promise);
        });

        Promise.all(promises).then(function (results) {
          var procode = ${ Gu_ProductView.procode };
          var result = results[0];
          /* if (result == 0) {
              alert("장바구니에 추가되지 않았습니다. 다시 시도해주세요.");
          } else */
          if (result == 1) {
            alert("주문페이지로 이동합니다.");

            // procode 입력 필드 추가 
            var form2 = document.createElement('form');
            var procodeInput = document.createElement('input');
            procodeInput.setAttribute('type', 'hidden');
            procodeInput.setAttribute('name', 'procode');
            procodeInput.setAttribute('value', procode);
            form2.appendChild(procodeInput);
            form2.setAttribute('method', 'POST');
            form2.setAttribute('action', 'orderPage');
            document.body.appendChild(form2);
            form2.submit();
          } else if (result == 2) {
            alert("장바구니에 동일한 상품이 있습니다.");
            // 장바구니로 이동하시겠습니까?
            orderCancel();
          }
        }).catch(function (error) {
          alert(error);
        });
      }
    </script>

    <script>
      function cancel() {
        if (confirm("장바구니로 이동하시겠습니까?") == true) {
          location.href = "Gu_cart";
        } else {
          return false;
        }
      }
      function orderCancel() {
        if (confirm("장바구니로 이동하시겠습니까?") == true) {
          location.href = "Gu_cart";
        } else {
          var form2 = document.createElement('form');
          var procodeInput = document.createElement('input');
          procodeInput.setAttribute('type', 'hidden');
          procodeInput.setAttribute('name', 'procode');
          procodeInput.setAttribute('value', procode);
          form2.appendChild(procodeInput);
          form2.setAttribute('method', 'POST');
          form2.setAttribute('action', 'orderPage');
          document.body.appendChild(form2);
          form2.submit();
        }
      }
    </script>

    </html>