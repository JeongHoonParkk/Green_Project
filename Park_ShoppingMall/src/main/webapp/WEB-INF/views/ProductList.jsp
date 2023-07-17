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
		<!-- 카테고리 별 제품 페이지 -->
		<!--  -->
		<!--   개발자   |   수정자   |    개발 및 수정 일자    |    수정 내용 -->
		<!--   박동명                     23-06-19            -->
		<!-- ====================================================== -->
		<table width="500" border="1">
		<tr>
			<td>상품번호</td>
			<td>카테고리 코드</td>
			<td>상품 이름</td>
			<td>상품 가격</td>
			<td>상품 정보</td>
		</tr>
		<c:forEach items="${ProductList}" var="dto">
			<tr>
				<td colspan="5">
					<img src=${dto.proimg} alt="제품사진" width="200" height="200">
				<td>
			</tr>
			<tr>
				<td>${dto.procode}</td>
				<td>${dto.catecode}</td>
<%-- 				<td>${dto.btitle}</td> --%>
				<td>
					<a href="ProductView?procode=${dto.procode}">${dto.proname}</a>
				</td>
				<td>${dto.proprice}</td>
				<td>${dto.proinfo}</td>
			</tr>
		</c:forEach>
	</table>
	</body>
</html>