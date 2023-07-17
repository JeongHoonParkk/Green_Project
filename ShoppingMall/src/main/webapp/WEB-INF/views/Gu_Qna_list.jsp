<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>문의게시판</h3>
	 <table width="800" border="1">
	    <tr>
	        <td>문의번호</td>
	        <td>상품코드</td>
	        <td>문의제목</td>
	        <td>작성일</td>
	        <td>작성자ID</td>
	    </tr>
	    <c:forEach items="${PQnaList}" var="dto">
	    <tr>
	    	<td>${dto.qnacode}</td>
	    	<td>${dto.procode}</td>
	    	<td>
	    		<a href="Gu_Qna_contentView?qnacode=${dto.qnacode}">${dto.qnatitle}</a>
	    	</td>
	    	<td>${dto.qnadate}</td>
	    	<td>${dto.id}</td>
	    </tr>
	    </c:forEach>
	    <tr>
	    	<td colspan="5">
	    		<a href="Gu_Qna_writeView">글작성</a>
	    	</td>
	    </tr>
	</table>
</body>
</html>