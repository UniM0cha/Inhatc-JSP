<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>


<div style="text-align: center">
	<form action="calculator_result.jsp" method="post">
	<h1>계산기</h1>
		<input type="text" name="n1" style="text-align: center" size=10>
		+
		<input type="text" name="n2" style="text-align: center" size=10> <p>
		
		<input type="submit" value="실행">
		<input type="reset" value="취소">
	</form>
</div>

</body>
</html>