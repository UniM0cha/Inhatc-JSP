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
	String d1 = request.getParameter("d1");
	String d2 = request.getParameter("d2");
	String d3 = request.getParameter("d3");
	String d4 = request.getParameter("d4");
%>

ID : <%= d1 %><p>
NAME : <%= d2 %><p>
Address : <%= d3 %><p>
Phone : <%= d4 %><p>

</body>
</html>