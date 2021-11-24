<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center">
	<h1>Login</h1>
	<form action="LoginCheck.jsp" method="post">
		ID : <input type="text" name="id">
		<p>
		Password : <input type="password" name="pw">
		<p>
		<input type="submit" value="Login">
	</form>
	<p>
	<!-- Sign in 링크를 클릭하면 회원가입 페이지로 이동 -->
	Don’t have an account? <a href="SignUp.jsp">Sign in</a>
</body>
</html>