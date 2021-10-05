<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("전송방식 : " + request.getMethod());
	out.println("전송 URL : " + request.getRequestURL());
%>
</body>
</html>