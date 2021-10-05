<%-- 성명 : 이정윤  학번 : 201845092 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실습1</title>
</head>
<body>
	<form action="registerResult.jsp" method="post">
		아이디 : <input type="text" name="id"><p>
		비밀번호 : <input type="password" name="pw"><p>
		취미:
		<input type="checkbox" name="interest" value="게임">게임
		<input type="checkbox" name="interest" value="쇼핑">쇼핑
		<input type="checkbox" name="interest" value="교육">교육
		<p>
		
		<input type="submit" value="확인">
		<input type="reset" value="취소">
	</form>
</body>
</html>