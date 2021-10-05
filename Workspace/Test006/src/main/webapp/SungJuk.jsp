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

<h1>성적처리</h1>

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
	전산논리회로 : <input type="text" name="s1" value="<%=s1%>"><p>
	TCP/IP : <input type="text" name="s2" value="<%=s2%>"><p>
	시스템보안 : <input type="text" name="s3" value="<%=s3%>"><p>
	JAVA프로그래밍 : <input type="text" name="s4" value="<%=s4%>"><p>
	
	<input type="submit" value="평균">
	<input type="reset" value="취소">
</form>

<%
	out.println("평균 : " + avg);
%>


</body>
</html>