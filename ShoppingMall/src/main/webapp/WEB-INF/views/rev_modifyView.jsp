<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		${rev_modifyView.revcode}
		${rev_modifyView.revtitle}
		${rev_modifyView.revcont}
	<table width="500" border="1">
		<form method="post" action="rev_modify">
			<input type="hidden" name="revcode" value="${rev_modifyView.revcode}">
			<tr>
				<td>리뷰제목</td>
				<td>
					<input type="text" name="revtitle" value="${rev_modifyView.revtitle}">
				</td>
			</tr>
			<tr>
				<td>리뷰내용</td>
				<td><textarea rows="10" name="revcont" size="500">${rev_modifyView.revcont}</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정완료">
					&nbsp;&nbsp;&nbsp;<a href="rev_list">목록보기</a>
				</td>
			</tr>
		</form>
	</table>
</body>
</html>