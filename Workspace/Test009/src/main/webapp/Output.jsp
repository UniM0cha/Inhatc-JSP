<%-- ���� : ������  �й� : 201845092 --%>
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

<b><%= _name %></b>���� ������ <b><%= _gender %></b>�̰�,<p>
�ְ����� <b><%= _area %></b>�Դϴ�. <p>

���� ID : <%= sessionId %> <p>
���� ���� �ð� : <%= intervalTime %>


</body>
</html>