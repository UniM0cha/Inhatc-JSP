<%-- 성명 : 이정윤  학번 : 201845092 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실습2</title>
</head>
<body>

<div style="text-align:center;">
	<h1>계산기 </h1>
	<Form action="CalculatorResult.jsp" method="get">
		<input style="text-align:center;" type="text" name="p1" size="10">
		+
		<input style="text-align:center;" type="text" name="p2" size="10">
		<p>
		<input style="" type="submit" value="실행">
		<input style="text-align:center;" type="reset" value="취소">
	</Form>
</div>

</body>
</html>