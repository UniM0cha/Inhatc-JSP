<%-- 성명 : 이정윤  학번 : 201845092 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	
	String _name = request.getParameter("name");
	String _password = request.getParameter("password");
	
	session.setAttribute("name", _name);
	session.setAttribute("password", _password);
	
	session.setMaxInactiveInterval(60*10);
%>

<form action="Output.jsp" method="post">
	<h1>사용자 기본정보 입력</h1> <p>
	1. 사용자의 성별? <p>
	<input type="radio" name="gender" value="남">남
	<input type="radio" name="gender" value="여">여 <p>
	
	2. 사용자의 주거지? <p>
	<input type="radio" name="area" value="경기도">경기도
	<input type="radio" name="area" value="강원도">강원도
	<input type="radio" name="area" value="충청도">충청도
	<input type="radio" name="area" value="경상도">경상도
	<input type="radio" name="area" value="전라도">전라도 <p>
	
	<input type="submit" value="결과보기">
</form>
</body>
</html>