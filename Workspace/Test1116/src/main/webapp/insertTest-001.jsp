<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
try {
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection
			("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	stmt.executeUpdate("insert into member (id, pw, name) values ('kim','1234','KIM')");
	
	out.println("입력이 완료되었습니다");
	
	
	
	
} catch(Exception e) {
	e.printStackTrace();
}
%>

</body>
</html>

