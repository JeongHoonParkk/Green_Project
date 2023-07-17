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

      <style>
        aside,
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
          margin-bottom: 150px;
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

        #search {
          border-top: none;
          border-left: none;
          border-right: none;
        }

        .badge {
          background-color: black;
          width: 30px;
        }

        .panel-heading {
          height: 50px;
          padding: 15px 10px;
          background-color: #F5F5F5;
          border-bottom: 1px solid #ced4da;
          border-radius: 10px 10px 0px 0px;
        }

        .div_page ul {
          display: flex;
          justify-content: center;
          list-style: none;
        }

        .paginate_button:hover {
          text-decoration: underline;
          color: #508FED;
        }
      </style>
    </head>

    <body>

      <main id="adminMain2">
        <div class="container">

          <aside id="aisdeLeft">
            <div id="title">
              <a href="/ShoppingMall/mainPage">
                <span style="font-size: x-large; position: absolute; left: 0px; color: black; width: 200px;">Room &
                  Bloom</span>
              </a>
            </div>
            <div class="category" style="position: absolute; top: 70px;">
              <ul style="width: 200px;">
<<<<<<< HEAD
                <li><a href="notice/list_admin">공지사항</a></li>
                <li><a href="mem_mgmt/memberList">회원 관리</a></li>
                <li><a href="product/productList">상품 관리</a></li>
                <li><a href="order/orderListPaging">주문 현황</a></li>
=======
                <li><a href="/ShoppingMall/notice/list">공지사항</a></li>
                <li><a href="/ShoppingMall/mem_mgmt/memberList">회원 관리</a></li>
                <li><a href="/ShoppingMall/product/productList">상품 관리</a></li>
                <li><a href="/ShoppingMall/order/orderListPaging">주문 현황</a></li>
>>>>>>> 058f259 (userPageMapping)
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
    orderList
    조은유    |     23-07-07     |              프론트	화면 배열 , css 적용
    =================================================================
    -->

          <!-- 본문 -->
          <section id="section">
            <article>
              <div id="article">

                <div>
                  <a href="/ShoppingMall/orderListPaging" style="color: #508FED;">
                    <h2>회원 주문 현황</h2>
                  </a>
                  <form method="post" class="form-inline" action="ordSearchList">
                    <div class="form-group" style="float:left; margin-right: 5px;">
                      <button type="button" class="btn btn-default" style="color: #508FED; border: 1px solid #ced4da;">
                        Count <span class="badge" style="border-radius: 100%;">${orderListPaging[0].count}</span>
                      </button>
                    </div>

                    <div class="form-group" style="float:left; margin-right:5px;">
                      <select class="form-control" name="type" id="skey">
                        <option value="OU" <c:out value="${pageMaker.cri.type eq 'OU' ? 'selected' : ''}" />>전체</option>
                        <option value="O" <c:out value="${pageMaker.cri.type eq 'O' ? 'selected' : ''}" />>주문번호</option>
                        <option value="U" <c:out value="${pageMaker.cri.type eq 'U' ? 'selected' : ''}" />>아이디</option>
                      </select>
                    </div>

                    <div class="form-group" style="float:left; margin-right:5px;">
                      <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
                      <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
                      <input type="text" name="keyword" id="value" class="form-control"
                        value='<c:out value="${pageMaker.cri.keyword}"></c:out>'>
                      <!--                 <input type="text" class="form-control" id="value" name="value"> -->
                    </div>

                    <button type="submit" class="btn btn-default" style="border: 1px solid #ced4da;">Search</button>
                  </form>

                  <div class="panel panel-default"
                    style="margin-top: 20px; border: 1px solid #ced4da; border-radius: 10px;">
                    <div class="panel-heading"> 회원 주문 현황 </div>
                    <div class="panel-body" style="margin-top: 20px; padding:10px;">
                      <!-- <%--테이블 태그 --%> -->
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th>주문번호</th>
                            <th>아이디</th>
                            <th>주문날짜</th>
                            <th>총 가격</th>
                            <th>주문상태</th>
                            <th>주문상태 변경</th>
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach var="dto" items="${orderListPaging}">
                            <tr>
                              <td><a href="/ShoppingMall/order_view?ordercode=${dto.ordercode}"
                                  style="color:#508FED;">${dto.ordercode}</a></td>
                              <td>${dto.userid}</td>
                              <td>${dto.orderdate}</td>
                              <td>${dto.totalprice}</td>
                              <td>${dto.status}</td>
                              <td>
                                <form action="orderModify" method="post">
                                  <select name="status">
                                    <c:choose>
                                      <c:when test="${dto.status == 1}">
                                        <option value="2">2:교환</option>
                                        <option value="3">3:환불</option>
                                        <option value="4">4:취소</option>
                                      </c:when>
                                      <c:when test="${dto.status == 2}">
                                        <option value="1">1:주문</option>
                                        <option value="3">3:환불</option>
                                        <option value="4">4:취소</option>
                                      </c:when>
                                      <c:when test="${dto.status == 3}">
                                        <option value="1">1:주문</option>
                                        <option value="2">2:교환</option>
                                        <option value="4">4:취소</option>
                                      </c:when>
                                      <c:when test="${dto.status == 4}">
                                        <option value="1">1:주문</option>
                                        <option value="2">2:교환</option>
                                        <option value="3">3:환불</option>
                                      </c:when>
                                    </c:choose>
                                  </select>
                                  <input type="hidden" name="ordercode" value="${dto.ordercode}">
                                  <input type="submit" value="수정">
                                </form>
                              </td>
                            </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>


                <div class="div_page" style="margin-top:50px;">
                  <ul class="pagination">
                    <c:if test="${pageMaker.prev}">
                      <li class="paginate_button" style="margin-right: 5px;">
                        <!-- 시작페이지 - 1 하면 이전의 10개 페이지 표시 -->
                        <!-- ex>11->10(1~10), 21->20(11~20) -->
                        <a href="/ShoppingMall/${pageMaker.startPage - 1}" style="color:#508FED;"> [이전] </a>
                      </li>
                    </c:if>
                    <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                      <li class="paginate_button" style="width:30px; height:30px;" ${pageMaker.cri.pageNum==num
                        ? "style='background-color:white'" :""}>
                        <!-- 클릭한 현재페이지 번호를 링크로 연결 -->
                        <a href="/ShoppingMall/${num}" style="color: #508FED;"> ${num} </a>
                      </li>
                    </c:forEach>
                    <c:if test="${pageMaker.next}">
                      <li class="paginate_button">
                        <!-- 끝페이지 + 1 하면 이후의 10개 페이지 표시 -->
                        <!-- ex>10->11(11~20), 20->21(21~30) -->
                        <a href="/ShoppingMall/${pageMaker.endPage + 1}" style="color: #508FED;"> [다음] </a>
                      </li>
                    </c:if>
                  </ul>
                </div>

                <form method="get" id="actionForm" action="#">
                  <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"> <input type="hidden"
                    name="amount" value="${pageMaker.cri.amount}">
                </form>

              </div>
            </article>
          </section>


          <!-- 우측 사이드바 -->
          <aside id="aisdeRight">
            <div class="rightbar">
              <div class="cart" style="position: absolute; top: 80px; right: 0px;">

              </div>
              <div class="login" style="position: absolute; top: 160px; right: 0px;">
                <ul id="log_ul" style="width: 200px;">
                  	<!--                      로그인한 상태 -->
                     <c:if test="${ admindto != null }">
                        <li>${admindto.id} 님</li>
                        <li><a href="/ShoppingMall/logout">Log out</a></li>
                     </c:if> 
                </ul>
              </div>
              <!-- 검색기능 -->
              <!-- <div class="search" style="position: absolute; top: 600px; right: 10px;">
                <form method="post" action="#">
                  <fieldset>
                    <input type="text" id="search" style="width: 120px;">
                    <a href="/ShoppingMall/#">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-search" viewBox="0 0 16 16">
                        <path
                          d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                      </svg>
                    </a>
                  </fieldset>
                </form> -->
            </div>
          </aside>
        </div>
      </main>
      <footer id="footer" style="font-family: notosans; text-align: left;">
        <a href="/ShoppingMall/adminMain2" style="color: black;">Room & Bloom</a> <br>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script>
      $(document).ready(function () {
        $("#skey").find("option[value='${skey}']").attr("selected", "selected");

        $("#svalue").val("${svalue}");

        $("#skey").on("change", function () {
          $("#svalue").val("");
        });
      });

      //페이징
      var actionForm = $("#actionForm");

      $(".paginate_button a").on("click", function (e) {
        // 		기본 동작 막음: 페이지 링크를 통해서 이동
        e.preventDefault();
        console.log("click~!!!");
        console.log("@# href ===>" + $(this).attr("href"));
        actionForm.find("input[name='pageNum']").val($(this).attr("href"));
        actionForm.attr("action", "ordSearchList");
        actionForm.submit();
      });
    </script>