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

<h1>회원정보 삭제 확인</h1>

<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("_id");
String pw = request.getParameter("_pw");
String name = request.getParameter("_name");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection
			("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	
	stmt.executeUpdate("delete from member where id = '" + id + "'");
	
	out.println("<p>ID:" + id);
	out.println("<p>PW:" + pw);
	out.println("<p>NAME:" + name);
	out.println("<p>삭제가 완료되었습니다.");
	
	stmt.close();
	conn.close();
	
} catch(Exception e) {
	e.printStackTrace();
}
%>

</body>
</html>