<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center">

<%
String id = request.getParameter("_id");
String name = request.getParameter("_name");
out.println("사용자ID : " + id + " 는 로그인에 성공하였습니다.<p>");
out.println(name + "님 환영합니다.");
%>

</body>
</html>