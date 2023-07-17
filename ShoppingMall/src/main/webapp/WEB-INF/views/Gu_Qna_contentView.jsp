<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="Gu_Qna_modifyView">
	<table width="500" border="1">
			<input type="hidden" name="qnacode" value="${PQnaContentView.qnacode}">
			<input type="hidden" name="qnatitle" value="${PQnaContentView.qnatitle}">
			<input type="hidden" name="qnacont" value="${PQnaContentView.qnacont}">
			<tr>
				<td>문의번호</td>
				<td>${PQnaContentView.qnacode}</td>
			</tr>
			<tr>
				<td>상품번호</td>
				<td>${PQnaContentView.procode}</td>
			</tr>
			<tr>
				<td>문의제목</td>
				<td>${PQnaContentView.qnatitle}</td>
			</tr>
			<tr>
				<td>문의내용</td>
				<td>${PQnaContentView.qnacont}</td>
			</tr>
			<tr>
				<td>작성일</td>
				<td>${PQnaContentView.qnadate}</td>
			</tr>
			<tr>
				<td>작성자ID</td>
				<td>${PQnaContentView.id}</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정">
					&nbsp;&nbsp;&nbsp;<a href="Gu_Qna_list">목록보기</a>
					&nbsp;&nbsp;<a href= "PQnaDelete?qnacode=${PQnaContentView.qnacode}">삭제</a>
				</td>
			</tr>
	</table>
	</form>
	<h4>댓글목록</h4>
	<table width="500" border="1">
			<c:forEach items="${PQnaCmtList}" var="cmt">
				<form method="post" action="Gu_Qna_CmtModifyView">
				<input type="hidden" name="recode" value="${cmt.recode}">
				<input type="hidden" name="recont" value="${cmt.recont}">
				<input type="hidden" name="qnacode" value="${PQnaContentView.qnacode}">
					<tr>
						<td>댓글번호</td>
						<td>${cmt.recode}</td>
					</tr>
					<tr>
						<td colspan="2"><b>관리자</b></td>
					</tr>
					<tr>
						<td>내용</td>
						<td>${cmt.recont}</td>
					</tr>
					<tr>
						<td>작성일</td>
						<td>${cmt.redate}</td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="submit" value="수정">
<%-- 						<a href= "Gu_Qna_CmtModifyView?recode=${cmt.recode}">수정</a>&nbsp;&nbsp; --%>
						<a href= "PQnaCmtDelete?recode=${cmt.recode}&amp;qnacode=${PQnaContentView.qnacode}">삭제</a>
						</td>
					</tr>
				</form>
			</c:forEach>
	</table>
	<h4>댓글작성</h4>
	<table border="3">
		<form method="post" action="PQnaCmtWrite">
			<input type="hidden" name="qnacode" value="${PQnaContentView.qnacode}">
			<tr>
				<td colspan="2">관리자</td>				
			</tr>
			<tr>
				<td>문의답변내용</td>
				<td><textarea rows="5" cols="50" name="recont" size="300"></textarea></td>			
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="댓글등록"></td>
			</tr>
		</form>
	</table>
	<form method="post" action="Gu_ProductView">
	<input type="hidden" name="procode" value="${PQnaContentView.procode}">
	<input type="hidden" name="id" value="${PQnaContentView.id}">
	<input type="submit" value="상품조회코드"></form>
</body>
</html>