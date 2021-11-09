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
if (d1 == null) d1 = "0";
if (d2 == null) d2 = "0";
%>
<form action="Calculator.jsp" method="post">
	<input type="text" name="d1" value=<%=d1 %>>+
	<input type="text" name="d2" value=<%=d2 %>> <p>
	<input type="submit">
</form>
<%
double sum = Double.parseDouble(d1) + Double.parseDouble(d2);
out.println(d1 + " + " + d2 + " = " + sum);
%>
</body>
</html>