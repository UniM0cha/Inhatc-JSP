<%@page import="java.sql.ResultSet"%>
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
<h1>회원정보 수정</h1>
<p>
로그인 사용자 : <%= session.getAttribute("__ID") %> <p>
<%
try {
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection
			("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from member");
%>

<table border="1">
	<tr>
		<th>ID</th>
		<th>Password</th>
		<th>Name</th>
	</tr>

<%
	while(rs.next()){
		String id = rs.getString("id");
		String pw = rs.getString("pw");
		String name = rs.getString("name");
		
		out.println("<tr>");
		out.println("<td><a href='Member_Update_UI.jsp?_id=" + id + "&_pw=" + pw + "&_name=" + name + "'>" + id + "</a></td>");
		out.println("<td>" + pw + "</td>");
		out.println("<td>" + name + "</td>");
		out.println("</tr>");
	}
%>

</table>

<%
	rs.close();
	stmt.close();
	conn.close();
	
} catch(Exception e) {
	e.printStackTrace();
}
%>

</body>
</html>