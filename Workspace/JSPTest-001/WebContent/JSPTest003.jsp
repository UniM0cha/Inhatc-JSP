<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>

<%
	String str = "Hello, Welcome to JSP World. Let's Go";
%>

<script>
	function view(){
		/* alert("test"); */
		alert("문자열 길이 : " + <%= str.length() %>);
	}
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	문자열 길이 : <%= str.length() %> <br>
	JSP 문자 위치 : <%= str.indexOf("JSP") %> <br>
	소문자 변환 : <%= str.toLowerCase() %> <br>
	대문자 변환 : <%= str.toUpperCase() %> <br>
	<p>
<%
	Calendar c = Calendar.getInstance();
%>
	오늘 날짜 : <%= c.get(Calendar.YEAR) %>년
	<%= c.get(Calendar.MONTH)+1 %>월
	<%= c.get(Calendar.DATE) %>일
	입니다.
	<p>
	
	<input type="Button" Value="OK" onClick="view()">
</body>
</html>