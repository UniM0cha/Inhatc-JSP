<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
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
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost/testdb_c", 
			"root", 
			"12345678");
	Statement stmt = conn.createStatement();
	
	stmt.executeUpdate("insert into member(id,pw,name)values('111','111','111')");
	
	
} catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>