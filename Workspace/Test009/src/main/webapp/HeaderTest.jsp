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
	response.setHeader("Cache-Control", "no-cache");
%>
<form action="HeaderTestResult.jsp" method="post">
	<input type="submit">
</form>
</body>
</html>