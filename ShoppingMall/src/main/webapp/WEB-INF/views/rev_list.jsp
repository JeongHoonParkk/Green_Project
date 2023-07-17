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
	 <table width="800" border="1">
	    <tr>
	        <td>리뷰번호</td>
	        <td>리뷰제목</td>
<!-- 	        <td>리뷰내용</td> -->
<!-- 	        <td>id</td> -->
	        <td>작성일</td>
	        <td>조회수</td>
	    </tr>
	    <c:forEach items="${rev_list}" var="dto">
	    <tr>
	    	<td>${dto.revcode}</td>
	    	<td>
<!-- 	    	content_view : 컨트롤러단 호출 -->
	    		<a href="rev_contentView?revcode=${dto.revcode}">${dto.revtitle}</a>
<%-- 	    		${dto.REVTITLE} --%>
	    	</td>
<%-- 	    	<td>${dto.REVCONT}</td> --%>
<%-- 	    	<td>${dto.revauth}</td> --%>
<%-- 	    	<td>${dto.id}</td> --%>
	    	<td>${dto.revdate}</td>
	    	<td>${dto.revhit}</td>
	    </tr>
	    </c:forEach>
	    <tr>
	    	<td colspan="4">
<!-- 	    	wirte_view : 컨트롤러단 호출 -->
	    		<a href="rev_writeView">글작성</a>
	    	</td>
	    </tr>
	</table>
</body>
</html>