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
	
	String _name = request.getParameter("name");
	String _password = request.getParameter("password");
	
	session.setAttribute("name", _name);
	session.setAttribute("password", _password);
	
	session.setMaxInactiveInterval(60*10);
%>

<form action="Output.jsp" method="post">
	<h1>����� �⺻���� �Է�</h1> <p>
	1. ������� ����? <p>
	<input type="radio" name="gender" value="��">��
	<input type="radio" name="gender" value="��">�� <p>
	
	2. ������� �ְ���? <p>
	<input type="radio" name="area" value="��⵵">��⵵
	<input type="radio" name="area" value="������">������
	<input type="radio" name="area" value="��û��">��û��
	<input type="radio" name="area" value="���">���
	<input type="radio" name="area" value="����">���� <p>
	
	<input type="submit" value="�������">
</form>
</body>
</html>