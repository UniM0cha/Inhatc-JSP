<!-- 성명 : 이정윤     학번 : 201845092 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	function viewDate() {
		var d = new Date();
		document.FormName.Date.value = (d.getYear()+1900) + " 년 " + (d.getMonth() + 1) + " 월 " +d.getDate() + " 일";
	}
</script>
<body>
	<%
	Date d = new Date();
	out.println((d.getYear()+1900)+" 년 "+(d.getMonth()+1)+" 월 "+d.getDate()+" 일");
	%>
	
	<Form Name="FormName">
		Local Date : <Input Type="Text" Name="Date">
		<Input Type="Button" Value="Call Local Date" onClick="viewDate()">	
	</Form>
</body>
</html>