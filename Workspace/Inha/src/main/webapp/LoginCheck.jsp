<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String id = request.getParameter("_id");
String pw = request.getParameter("_pw");
String name = request.getParameter("_name");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection
			("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from member where id='" + id + "' and pw='" + pw + "'");
	
	if(rs.next()){
		session.setAttribute("__ID", id);
		response.sendRedirect("Success.jsp?_id=" + id);
	} else {
		response.sendRedirect("Fail.jsp?_id=" + id);
	}
	
	
	
	rs.close();
	stmt.close();
	conn.close();
	
} catch(Exception e) {
	e.printStackTrace();
}

%>

</body>
</html>