<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center">
	<h1>Sign Up</h1>
	<form action="SignUpCheck.jsp" method="post">
		Name : <input type="text" name="name">
		<p>
		ID : <input type="text" name="id">
		<p>
		Password : <input type="password" name="pw">
		<p>
		<input type="submit" value="Sign in">
	</form>
	<p>
	<!-- Sign in 링크를 클릭하면 회원가입 페이지로 이동 -->
	Return to <a href="Login.jsp">Login</a>
</body>
</html>