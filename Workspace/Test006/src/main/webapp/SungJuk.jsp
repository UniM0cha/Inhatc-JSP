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

<h1>����ó��</h1>

<%
	String s1 = request.getParameter("s1");
	String s2 = request.getParameter("s2");
	String s3 = request.getParameter("s3");
	String s4 = request.getParameter("s4");
	
	if(s1 == null) s1 = "0";
	if(s2 == null) s2 = "0";
	if(s3 == null) s3 = "0";
	if(s4 == null) s4 = "0";
	
	int sum = Integer.parseInt(s1) +
			Integer.parseInt(s2) +
			Integer.parseInt(s3) +
			Integer.parseInt(s4);
	float avg = sum / 4;
%>

<form action="SungJuk.jsp" method="get">
	�����ȸ�� : <input type="text" name="s1" value="<%=s1%>"><p>
	TCP/IP : <input type="text" name="s2" value="<%=s2%>"><p>
	�ý��ۺ��� : <input type="text" name="s3" value="<%=s3%>"><p>
	JAVA���α׷��� : <input type="text" name="s4" value="<%=s4%>"><p>
	
	<input type="submit" value="���">
	<input type="reset" value="���">
</form>

<%
	out.println("��� : " + avg);
%>


</body>
</html>