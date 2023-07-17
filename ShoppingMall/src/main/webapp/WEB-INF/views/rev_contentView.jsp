<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="rev_modifyView">
	<table width="500" border="1">
			<input type="hidden" name="revcode" value="${rev_contentView.revcode}">
			<input type="hidden" name="revtitle" value="${rev_contentView.revtitle}">
			<input type="hidden" name="revcont" value="${rev_contentView.revcont}">
			<tr>
				<td>리뷰번호</td>
				<td>${rev_contentView.revcode}</td>
			</tr>
			<tr>
				<td>리뷰제목</td>
				<td>${rev_contentView.revtitle}</td>
			</tr>
			<tr>
				<td>리뷰내용</td>
				<td>${rev_contentView.revcont}</td>
			</tr>
<!-- 			<tr> -->
<!-- 				<td>리뷰작성자</td> -->
<%-- 				<td>${rev_contentView.revauth}</td> --%>
<!-- 			</tr> -->
			<tr>
				<td>Id</td>
				<td>${rev_contentView.id}</td>
			</tr>
			<tr>
				<td>작성일</td>
				<td>${rev_contentView.revdate}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${rev_contentView.revhit}</td>
			</tr>
			<tr>
				<td colspan="2">
<%-- 					<a href="rev_modify_view?revcode=${rev_contentView.revcode}">수정</a> --%>
					<input type="submit" value="수정">
					&nbsp;&nbsp;&nbsp;<a href="rev_list">목록보기</a>
					&nbsp;&nbsp;<a href= "rev_delete?revcode=${rev_contentView.revcode}">삭제</a>
				</td>
			</tr>
	</table>
	</form>
	<h4>댓글목록</h4>
	<table width="500" border="1">
			<c:forEach items="${RevCmtList}" var="cmt">
				<form method="post" action="revCmtModifyView">
					<input type="hidden" name="cmtcode" value="${cmt.cmtcode}">
					<input type="hidden" name="cmtcont" value="${cmt.cmtcont}">
					<input type="hidden" name="revcode" value="${rev_contentView.revcode}">
					<tr>
						<td>댓글번호</td>
						<td>${cmt.cmtcode}</td>
					</tr>
					<tr>
						<td colspan="2"><b>관리자</b></td>
					</tr>
					<tr>
						<td>내용</td>
						<td>${cmt.cmtcont}</td>
					</tr>
					<tr>
						<td>작성일</td>
						<td>${cmt.cmtdate}</td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="submit" value="수정">
	<%-- 					<a href= "revCmtModifyView?cmtcode=${cmt.cmtcode}&amp;cmtcont=${cmtcont}">수정</a>&nbsp;&nbsp; --%>
						<a href= "revCmtDelete?cmtcode=${cmt.cmtcode}&amp;revcode=${rev_contentView.revcode}">삭제</a>
						</td>
					</tr>
				</form>
			</c:forEach>
	</table>
	<h4>댓글작성</h4>
	<table border="3">
		<form method="post" action="revCmtWrite">
			<input type="hidden" name="revcode" value="${rev_contentView.revcode}">
			<tr>
				<td colspan="2"><b>관리자</b></td>				
			</tr>
<!-- 			<tr> -->
<!-- 				<td>비밀번호</td> -->
<!-- 				<td><input type="password" name="CMTPWD" size="30"></td>				 -->
<!-- 			</tr> -->
			<tr>
				<td>리뷰내용</td>
				<td><textarea rows="5" cols="50" name="cmtcont" size="300"></textarea></td>			
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="댓글등록"></td>
			</tr>
		</form>
	</table>
</body>
</html>