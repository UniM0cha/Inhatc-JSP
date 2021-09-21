<!-- 성명: 이정윤, 학번: 201845092 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String str = "Hello, Welcome to JSP World. Let's Go";
%>
	입력되어 있는 문자열의 길이는 <%= str.length() %> 입니다. <br>
	JSP 문자는 <%= str.indexOf("JSP") %> 번째에 위치하고 있습니다. <br>
	입력 문자열을 소문자로 변환한 결과는 <%= str.toLowerCase() %> 입니다. <br>
	입력 문자열을 대문자로 변환한 결과는 <%= str.toUpperCase() %> 입니다. <br>
	
	<p>
	
<%
	Calendar c = Calendar.getInstance();
%>
	<b>오늘은
	<%= c.get(Calendar.YEAR) %>년
	<%= c.get(Calendar.MONTH) + 1 %>월
	<%= c.get(Calendar.DATE) %>일
	입니다.<br></b>
</body>
</html>