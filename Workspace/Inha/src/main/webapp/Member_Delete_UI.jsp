<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원정보 삭제</h1>

<%
String id = request.getParameter("_id");
String pw = request.getParameter("_pw");
String name = request.getParameter("_name");
%>

<form action="Member_Delete_Query.jsp" method="post">

	ID : <input type="text" name="_id" value="<%= id%>"> <p>
	PW :  <input type="text" name="_pw"value="<%= pw%>"> <p>
	Name :  <input type="text" name="_name"value="<%= name%>"> <p>
	<input type="submit" value="삭제">
	
</form>

</body>
</html>