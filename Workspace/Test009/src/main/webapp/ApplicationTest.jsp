<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%= "�������� : " + application.getServerInfo() %>
<%= "�������� ���� ��ġ : " + application.getRealPath("/") %>

application ��ü�� log�Լ� �׽�Ʈ
<% application.log("!!!!!!! application Test !!!!!!!"); // �ֿܼ� ���� %>
</body>
</html>