<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>답변수정</h4>
	<table>
		<form method="post" action="PQnaCmtModify">
			<input type="hidden" name="qnacode" value="${PQnaCmtModifyView.qnacode}">
			<input type="hidden" name="recode" value="${PQnaCmtModifyView.recode}">
			<tr>
				<td>댓글내용</td>
				<td><textarea rows="5" cols="50" name="recont" size="500">${PQnaCmtModifyView.recont}</textarea></td>				
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="댓글수정">&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
		</form>
	</table>
</body>
</html>