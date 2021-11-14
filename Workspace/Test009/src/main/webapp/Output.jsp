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

	String _gender = request.getParameter("gender");
	String _area = request.getParameter("area");
	String _name = (String)session.getAttribute("name");
	String _password = (String)session.getAttribute("password");
	
	session.setAttribute("gender", _gender);
	session.setAttribute("area", _area);
	
	String sessionId = session.getId();
	
	int intervalTime = session.getMaxInactiveInterval();
	
	session.invalidate();
%>

<b><%= _name %></b>님의 성별은 <b><%= _gender %></b>이고,<p>
주거지는 <b><%= _area %></b>입니다. <p>

세션 ID : <%= sessionId %> <p>
세션 유지 시간 : <%= intervalTime %>


</body>
</html>