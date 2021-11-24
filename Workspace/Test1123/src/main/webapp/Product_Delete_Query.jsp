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

<h1>상품 정보 삭제 확인</h1>

<%
request.setCharacterEncoding("UTF-8");
String pid = request.getParameter("_pid");
String pname = request.getParameter("_pname");
String price = request.getParameter("_price");
String info = request.getParameter("_info");

try {
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	stmt.executeUpdate("Delete from product where pid='" + pid + "'");
	out.println("<p>상품ID: " + pid);
	out.println("<p>상품명: " + pname);
	out.println("<p>상품가격: " + price);
	out.println("<p>상품정보: " + info);
	out.println("<p>상품정보수정이 완료되었습니다.");
	
} catch(Exception e) {
	e.printStackTrace();
}

%>

</body>
</html>

