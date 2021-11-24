<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>상품정보 수정</h1>
로그인 사용자: <%= session.getAttribute("__ID")%><p>

<%
String pid = request.getParameter("_pid");
String pname = request.getParameter("_pname");
String price = request.getParameter("_price");
String info = request.getParameter("_info");
%>

<form action="Product_Update_Query.jsp" method="post">
상품ID: <input type="text" name="_pid" value="<%= pid %>"><p>
상품명: <input type="text" name="_pname" value="<%= pname %>"><p>
상품가격: <input type="text" name="_price" value="<%= price %>"><p>
상품정보: <input type="text" name="_info" value="<%= info %>"><p>
<input type="submit" value="등록">

</form>

</body>
</html>

