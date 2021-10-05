<%-- 성명 : 이정윤  학번 : 201845092 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실습3</title>
</head>
<body>
	<div style="text-align:center;">
		<h1>계산기 </h1>
		<%
		String p1 = request.getParameter("p1");
		String p2 = request.getParameter("p2");
		Double p3 = Double.parseDouble(p1) + Double.parseDouble(p2);
		out.println(p1 + " + "+ p2 + " = " + p3);
		%>
	</div>
</body>
</html>