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

<h1>����3</h1>

<form action="CalculatorResult3.jsp" method="get">

	<input type="text" name="p1">+
	<input type="text" name="p2">
	
	<input type="hidden" name="cal" value="+">
	
	<input type="submit" value="����">
	<input type="reset" value="���">

</form>
<p>

<form action="CalculatorResult3.jsp" method="get">

	<input type="text" name="p1">-
	<input type="text" name="p2">
	
	<input type="hidden" name="cal" value="-">
	
	<input type="submit" value="����">
	<input type="reset" value="���">

</form>
<p>

<form action="CalculatorResult3.jsp" method="get">

	<input type="text" name="p1">*
	<input type="text" name="p2">
	
	<input type="hidden" name="cal" value="*">
	
	<input type="submit" value="����">
	<input type="reset" value="���">

</form>
<p>

<form action="CalculatorResult3.jsp" method="get">

	<input type="text" name="p1">/
	<input type="text" name="p2">
	
	<input type="hidden" name="cal" value="/">
	
	<input type="submit" value="����">
	<input type="reset" value="���">

</form>

</body>
</html>