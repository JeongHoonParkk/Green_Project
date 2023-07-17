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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
  <style>
      table, td{
          border : 1px solid gray;
          border-collapse : collapse;
      }

      td{
        padding: 10px;
        font-size: small;
        height: 40px;
      }
      input{
          border: 1px solid gray;
          /* border-radius: 5px 5px 5px 5px;  */
          height: 25px;
          margin-top: 4px;
      }
/*       button:hover{ */
/*         background-color: black; */
/*       color: white; */
/*       } */
     #order{
      display: flex;
      justify-content: center;
     }
    .pay{
       border: 1px solid black; 
       margin-top: 50px; 
       width: 900px;
       height: 400px;
    }
    .block{
      border: 1px solid black; 
    }
  </style>
  <link rel="stylesheet" href="resources/css/orderpage.css">
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
<!--               <li><a href="#">BEST</a></li> -->
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
            <div id="order">
                <div style="position: absolute; left: 45%;">Order Page</div>
             
                    <form id="frm">
                        <table style="width: 900px;" align="center" id="yourTableId">
                            <caption align="top"><hr style="width: 900px; margin-top: 60px; margin-bottom: 40px;"></caption>
                            <tr>
                                <td colspan="8"><b style="float: left;">국내배송상품 주문내역</b>
                                <div style="float: right; margin-top: -5px; margin-right: 5px;"><input type="button" value="구매페이지 나가기" onclick="cancel()" ></div>
                                </td>
                            </tr>
                            <tr style="text-align: center;">
                               
                                <td style="width: 80px;">Image</td>
                                <td>Item</td>
                                <td style="width: 120px;">Price</td>
                                <td style="width: 70px;">Qty</td>
                                <td style="width: 120px;">Delivery</td>
                                <td style="width: 120px;">Charge</td>
                                <td>Total</td>
                            </tr>
                            
                            
                            
                            
                            
                            <!-- 상품 추가될 시 증가하게 해야됨 -->
                            <c:set var="totalPurchaseAmount" value="0" />

							<c:forEach items="${orderPro}" var="order">
							    <tr>
							        <td><img src="${proimg}" width="50px" height="60px"></td>
							        <td style="text-align: left; border-left: hidden;">
							            <div id="product">${order.proname}</div> <br>
							            <div style="color: gray;">
							                [옵션 : <span id="color">${order.color}</span> , <span id="psize">${order.psize}</span>]
							            </div>
							        </td>
							        <td> 
							            <div style="float: left;">&#8361;</div> 
							            <div>${order.proprice}</div>
							        </td>
							        <td>
							            <div id="amount">${order.amount}</div>
							        </td>
							        <td>기본배송</td>
							        <td>[조건 할인]</td>
							        <td>
							            <c:set var="total" value="${order.proprice * order.amount}" />
							            &#8361; ${total}
							        </td>
							    </tr>
							    
							    <c:set var="totalPurchaseAmount" value="${totalPurchaseAmount + (order.proprice * order.amount)}" />
							</c:forEach>
							
							<tr>
							    <td colspan="8">
							        <span style="float: left;">[기본배송]</span>
							        <div style="float: right;">
							            상품구매금액 ${totalPurchaseAmount} + 배송비 2,500 = 합계 : &#8361; 
							            <div id="price" style="float: right;"> ${totalPurchaseAmount + 2500}</div> 
							        </div>
							    </td>
							</tr>
                            
                            
                        </table>
              				
        
                        <table style="width: 900px;" align="center">
                            <caption align="top"><hr style="width: 900px; margin-top: 60px; margin-bottom: 40px;"></caption>
                            <tr>
                                <td colspan="2" style="border-top: hidden; border-left: hidden; border-right: hidden;">
                                <span style="float: left;"><b>배송정보</b></span>
                                </td>
                            </tr>
                            <tr style="border-bottom: hidden;">
                                <td style="border-right: hidden; width: 135px">배송지 선택</td>
                                <td style=" text-align: left;">
                                    <input type="radio" name="addr" value="회원정보와동일" checked> 회원 정보와 동일
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="addr" value="새로운배송지">새로운 배송지
                                </td>
                            </tr>
                            
                        </table>
                        
                                      <!-- 회원배송지 -->
                        <div id="userAddr"> 
                            <table style="width: 900px;" align="center">
                                <tr>
                                    <td>받으시는 분</td>
                                    <td>
                                        <input id="buyer_name" type="text" style="width: 150px; float: left;" value="${addr.name}">
                                    </td>
                                </tr>
                                <tr>
                                    <td>주소 *</td>
                                    <td>
                                        <input type="text" name="postcode" id="postcode" placeholder=" 우편번호" style="width: 60px; float: left;" value="${addr.pcode }" required="required">
                                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="float: left; margin-left: 5px;"><br><br>
                                        <input type="text" name="addr" id="addr" placeholder="  기본주소" style="width: 300px; float: left; margin-top: -3px;" value="${addr.loadaddr }" required="required"><br><br>
                                        <input type="text" id="etcaddr" placeholder="  상세주소" style="width: 300px; float: left; margin-top: -10px;" value="${addr.etcaddr }" required="required"> 
                                        <input type="text" id="sample6_extraAddress" placeholder="참고항목" style="float: left; margin-left: 5px; margin-top: -10px;" required="required">
                                        <input type="hidden" id="userid" value="${userid}">
                                        <input type="hidden" id="procode" value="${procode}">
                                        <input type="hidden" id="cartcode" value="${cartcode}">
                                        
                                        
                                </tr>
                                <tr>
                                    <td>휴대전화 *</td>
                                    <td>
                                        <select id="ph1" style="float: left;">
                                            <option value="010" selected>010</option>
                                            <option value="011">011</option>
                                            <option value="016">016</option>
                                            <option value="017">017</option>
                                            <option value="018">018</option>
                                            <option value="019">019</option>      
                                        </select>
                                        <span style="float:left; margin-left: 3px;"> -</span>
                                        <input type="text" id="ph2" style="width: 60px; float: left; margin-left: 3px; margin-top: -1px;" value="${hp1 }" required="required">
                                        <span style="float:left; margin-left: 3px;"> -</span>
                                        <input type="text" id="ph3" style="width: 60px; float: left;  margin-left: 3px; margin-top: -1px" value="${hp2 }" required="required">
                                    </td>
                                </tr>
                                <tr>
                                <tr>
                                    <td>배송메세지</td>
                                    <td>
                                        <input type="text" id="memo" name="memo" style="width: 500px; height: 60px; font-size: medium; float: left;" maxlength="100px">
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- 신규배송지 -->
                        <div id="newAddr"> 
                            <table style="width: 900px;" align="center">
                            	<tr>
                                    <td>받으시는 분</td>
                                    <td>
                                        <input id="buyer_name" type="text" style="width: 150px; float: left;">
                                    </td>
                                </tr>
                                <tr>
                                    <td>주소 *</td>
                                    <td>
                                        <input type="text" name="postcode" id="postcode" placeholder=" 우편번호" style="width: 60px; float: left;" required="required">
                                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="float: left; margin-left: 5px;"><br><br>
                                        <input type="text" name="addr" id="addr" placeholder="  기본주소" style="width: 300px; float: left; margin-top: -3px;" required="required"><br><br>
                                        <input type="text" id="etcaddr" placeholder="  상세주소" style="width: 300px; float: left; margin-top: -10px;" required="required">
                                        <input type="text" id="sample6_extraAddress" placeholder="참고항목" style="float: left; margin-left: 5px; margin-top: -10px;" required="required">
                                </tr>
                                <tr>
                                    <td>휴대전화 *</td>
                                    <td>
                                        <select id="ph1" style="float: left;">
                                            <option value="010" selected>010</option>
                                            <option value="011">011</option>
                                            <option value="016">016</option>
                                            <option value="017">017</option>
                                            <option value="018">018</option>
                                            <option value="019">019</option>      
                                        </select>
                                        <span style="float:left; margin-left: 3px;"> -</span>
                                        <input type="text" id="ph2" style="width: 60px; float: left; margin-left: 3px; margin-top: -1px;" required="required">
                                        <span style="float:left; margin-left: 3px;"> -</span>
                                        <input type="text" id="ph3" style="width: 60px; float: left;  margin-left: 3px; margin-top: -1px" required="required">
                                    </td>
                                </tr>
                                <tr>
                                <tr>
                                    <td>배송메세지</td>
                                    <td>
                                        <input type="text" id="memo" name="memo" style="width: 500px; height: 60px; font-size: medium; float: left;" maxlength="100px">
                                    </td>
                                </tr>
                            </table>
                        </div>
              
              
              
              
              
              
              

                        <table style="width: 900px; margin-top: 50px;" align="center">
                            <tr>
                            <td colspan="2" style="border-top: hidden; border-left: hidden; border-right: hidden;">
                                <span style="float: left;"><b>결제수단</b></span>
                            </td>
                            </tr>
                            <tr>
                                <td style="width: 600px; height: 50px;">
                                <div style="float: left; margin-left: 10px;">
                                    <input type="radio" name="payment" value="신용카드" checked>신용카드
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="payment" value="카카오페이">카카오페이
                                </div>
                      
                      
                      
                      
                                </td>
                                <td rowspan="2" style="width: 200px; height: 200px;">
                                총 결제 금액 : &#8361; ${totalPurchaseAmount + 2500} 
                                <!-- 일반결제 -->
                                <div>
                                    <input style="width: 150px; height: 30px; background-color: black; color: white;" type="button" id="pay" value="결제하기" onclick="consultation_request(this.id)" >
                                </div>

                                <!-- 카카오페이 결제 버튼 -->
                                <div >
                                    <button type="button" id="kakao" onclick="consultation_request(this.id)">
                                    <img alt="" src="resources/kakao.png" width="50px">
                                    </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="3" style="height: 200px;">
                                <div class="agreeInner" >
                                    <span class="agreeCheck">개인정보 수집 및 이용 동의</span>
                                    <span class="radioW">   
                                    <span style="position: absolute; margin-top: -8px; margin-left: 5px;">
                                        <input  type="checkbox" id="privacy_agreement0" name="privacy_agreement_radio" fw-filter="isFill" fw-label="개인정보보호정책" fw-msg="">
                                    </span>
                                    </span>
                                </div>   
                                </td>
                            </tr>
                            <tr>
                                <td> 상품금액 : &#8361; ${totalPurchaseAmount}</td>
                            </tr>
                            <tr>
                                <td> 배송비 : 2500</td>
                            </tr>
                        </table>  
                    </form>
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
							
							<li><a href="order/orderList">Order</a></li>
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
<!--                <div class="search" -->
<!--                   style="position: absolute; top: 600px; right: 10px;"> -->
<!--                   <form method="post" action="#"> -->
<!--                      <fieldset> -->
<!--                         <input type="text" id="search"> <a href="#"> <svg -->
<!--                               xmlns="http://www.w3.org/2000/svg" width="16" height="16" -->
<!--                               fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"> -->
<!--                           <path -->
<!--                                  d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" /> -->
<!--                       </svg> -->
<!--                         </a> -->
<!--                      </fieldset> -->
<!--                   </form> -->
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
    <!-- 카카오페이 -->
    <script type="text/javascript" src="resources/js/kakaopay.js"></script>
    <!-- 일반결제 -->
    <script type="text/javascript" src="resources/js/pay.js"></script>
    <!-- 개인정보 수집동의 -->
    <script type="text/javascript" src="resources/js/agree.js"></script>
    <!-- 주소api -->
    <script type="text/javascript" src="resources/js/addrAPI.js"></script>
    <script>
        function cancel(){
            alert("취소시 주문정보는 저장되지 않습니다.")
            if (confirm("페이지를 이동하시겠습니까?") == true) {
                location.href="cancel";
            }else{
                return false;
            }
            }
    </script>

    <script>
        $(document).ready(function(){

        $('#kakao').hide();   // 초깃값 설정

        $("input[name='payment']").change(function(){
        // 휴대폰 결제 선택 시.
        if($("input[name='payment']:checked").val() == '신용카드'){
            $('#pay').show();
            $('#kakao').hide();
        }	
        // 신용카드 결제 선택 시.
        else if($("input[name='payment']:checked").val() == '카카오페이'){
            $('#pay').hide();
            $('#kakao').show();
        }
        });

        });
    </script>
    <script>
        $("input[name='payment']").change(function(){		
        });
        $(document).ready(function(){
            
            $('#newAddr').hide();   // 초깃값 설정
                
            $("input[name='addr']").change(function(){
                // 휴대폰 결제 선택 시.
                if($("input[name='addr']:checked").val() == '회원정보와동일'){
                    $('#newAddr').hide();
                    $('#userAddr').show();
                }	
                // 무통장입금 결제 선택 시.
                else if($("input[name='addr']:checked").val() == '새로운배송지'){
                    $('#userAddr').hide();
                    $('#newAddr').show();
                }
            });
                
        });
    </script>
</html>