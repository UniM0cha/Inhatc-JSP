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

<h1>계산기4</h1>

<form action="Calculator4.jsp" method="get">

	<input type="text" name="p1">+
	<input type="text" name="p2">
	
	<input type="hidden" name="cal" value="+">
	
	<input type="submit" value="실행">
	<input type="reset" value="취소">

</form>
<p>

<form action="Calculator4.jsp" method="get">

	<input type="text" name="p1">-
	<input type="text" name="p2">
	
	<input type="hidden" name="cal" value="-">
	
	<input type="submit" value="실행">
	<input type="reset" value="취소">

</form>
<p>

<form action="Calculator4.jsp" method="get">

	<input type="text" name="p1">*
	<input type="text" name="p2">
	
	<input type="hidden" name="cal" value="*">
	
	<input type="submit" value="실행">
	<input type="reset" value="취소">

</form>
<p>

<form action="Calculator4.jsp" method="get">

	<input type="text" name="p1">/
	<input type="text" name="p2">
	
	<input type="hidden" name="cal" value="/">
	
	<input type="submit" value="실행">
	<input type="reset" value="취소">

</form>
<p>

<%
	// 웹에서 전달하는 타입은 무조건 Stirng
	String p1 = request.getParameter("p1");
	String p2 = request.getParameter("p2");
	String cal = request.getParameter("cal");
	
	if(cal == null) cal = "+";
	if(p1 == null) p1 = "0";
	if(p2 == null) p2 = "0";
	
	
	int p3 = 0;
	
	if(cal.equals("+")){
		p3 = Integer.parseInt(p1) + Integer.parseInt(p2);
	} else if(cal.equals("-")){
		p3 = Integer.parseInt(p1) - Integer.parseInt(p2); 	
	} else if(cal.equals("*")){
		p3 = Integer.parseInt(p1) * Integer.parseInt(p2); 	
	} else if(cal.equals("/")){
		p3 = Integer.parseInt(p1) / Integer.parseInt(p2); 			
	}
	
	out.println(p1 + " " + cal + " " + p2 + " = " + p3);
%>

</body>
</html>