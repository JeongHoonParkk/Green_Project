<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<!-- ====================================================== -->
		<!-- 제품 상세 페이지 -->
		<!--  -->
		<!--   개발자   |   수정자   |    개발 및 수정 일자    |    수정 내용 -->
		<!--   박동명                     23-06-19            -->
		<!-- ====================================================== -->
		<table width="500" border="1">
			<tr>
				<img src=${ProductView.proimg} alt="제품사진" width="200" height="200">
			</tr>
			<tr>
				<td>제품 번호</td>
				<td>${ProductView.procode}</td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>
					<c:if test="${ProductView.catecode eq 1}">
						의자
					</c:if>
					<c:if test="${ProductView.catecode eq 2}">
						침대
					</c:if>
					<c:if test="${ProductView.catecode eq 3}">
						테이블/책상
					</c:if>
					<c:if test="${ProductView.catecode eq 4}">
						소파
					</c:if>
				</td>
			</tr>
			<tr>
				<td>제품명</td>
<%-- 				<td>${ProductView.bname}</td> --%>
				<td>
					<input type="text" value="${ProductView.proname}">
				</td>
			</tr>
			<tr>
				<td>가격</td>
<%-- 				<td>${ProductView.btitle}</td> --%>
				<td>
					<input type="text" value="${ProductView.proprice}">
				</td>
			</tr>
			<tr>
				<td>설명</td>
<%-- 				<td>${ProductView.bcontent}</td> --%>
				<td>
					<input type="text" value="${ProductView.proinfo}">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="구매">
					&nbsp;&nbsp;<a href="ProductList?catecode=${ProductView.catecode}">목록보기</a>
<%-- 					&nbsp;&nbsp;<a href="delete?bid=${ProductView.procode}">삭제</a> --%>
				</td>
			</tr>
		</table>
	</body>
</html>










