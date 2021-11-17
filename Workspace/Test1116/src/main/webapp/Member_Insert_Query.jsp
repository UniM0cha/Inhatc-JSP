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

<h1>등록 정보 확인</h1>

<%
String id = request.getParameter("_id");
String pw = request.getParameter("_pw");
String name = request.getParameter("_name");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection
			("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	
	stmt.executeUpdate("insert into member (id, pw, name) values ('" + id + "','" + pw + "','" + name + "')");
	
	out.println("<p>ID:" + id);
	out.println("<p>PW:" + pw);
	out.println("<p>NAME:" + name);
	out.println("<p>입력이 완료되었습니다.");
	
	stmt.close();
	conn.close();
	
} catch(Exception e) {
	e.printStackTrace();
}
%>



<%-- 
<table border="1">
	<tr>
		<th>ID</th>
		<th>Password</th>
		<th>Name</th>
	</tr>

<%
	while(rs.next()){
		String _id = rs.getString("id");
		String _pw = rs.getString("pw");
		String _name = rs.getString("name");
		
		out.println("<tr>");
		out.println("<td>" + _id + "</td>");
		out.println("<td>" + _pw + "</td>");
		out.println("<td>" + _name + "</td>");
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
%> --%>
</body>
</html>