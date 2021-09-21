<!-- 성명 : 이정윤     학번 : 201845092 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Date d = new Date();
	out.println((d.getYear()+1900)+" 년 "+(d.getMonth()+1)+" 월 "+d.getDate()+" 일");
	%>
</body>
</html>