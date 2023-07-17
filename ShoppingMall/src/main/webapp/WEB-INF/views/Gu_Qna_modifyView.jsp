<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="500" border="1">
		<form method="post" action="PQnaModify">
			<input type="hidden" name="qnacode" value="${PQnaModifyView.qnacode}">
			<tr>
				<td>문의제목</td>
				<td>
					<input type="text" name="qnatitle" value="${PQnaModifyView.qnatitle}">
				</td>
			</tr>
			<tr>
				<td>문의내용</td>
				<td><textarea rows="10" name="qnacont" size="500">${PQnaModifyView.qnacont}</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정완료">
					&nbsp;&nbsp;&nbsp;<a href="Gu_Qnav_list">목록보기</a>
				</td>
			</tr>
		</form>
	</table>
</body>
</html>