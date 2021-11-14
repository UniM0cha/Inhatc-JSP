<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%= "서버정보 : " + application.getServerInfo() %>
<%= "페이지의 절대 위치 : " + application.getRealPath("/") %>

application 객체의 log함수 테스트
<% application.log("!!!!!!! application Test !!!!!!!"); // 콘솔에 찍힘 %>
</body>
</html>