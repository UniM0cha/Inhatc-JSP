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
<h1>상품 정보 조회</h1><p>

로그인 사용자: <%= session.getAttribute("__ID")%><p>

<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from product");  // resultset으로 되어있음
	// 	rs.next();
	
	
	out.println("<table border='1'>");
	while(rs.next()) {
		String pid = rs.getString("pid");
		String pname = rs.getString("pname");
		int price = rs.getInt("price");
		String info = rs.getString("info");
		
		out.println("<tr>");
		out.println("<td>" + pid + "</td>");
		out.println("<td>" + pname + "</td>");
		out.println("<td>" + price + "</td>");
		out.println("<td>" + info + "</td>");

		out.println("</tr>");
	}
	out.println("</table>");
	
	
	rs.close();
	stmt.close();
	conn.close();
	
} catch(Exception e) {
	e.printStackTrace();
}
%>

</body>
</html>