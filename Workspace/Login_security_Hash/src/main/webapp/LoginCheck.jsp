<%@page import="java.security.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center">

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

String name = null;
String stringDigestedPw = null;
String DBStringDigestedPw = null;

// 데이터베이스로부터 암호화된 패스워드 받아옴
try {
	MessageDigest md5 = MessageDigest.getInstance("MD5");   // MD5 해시 함수 사용
	
	// 패스워드 평문 해싱
	md5.update(pw.getBytes());
	byte[] digestedPw = md5.digest();
	
	//해시값을 Base64 형태의 문자열로 변환
	stringDigestedPw = Base64.getEncoder().encodeToString(digestedPw);
	
	// 데이터베이스에서 저장된 패스워드 해시값 가져옴
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from member where id='" + id + "'");
	
	if(rs.next()){
		DBStringDigestedPw = rs.getString("pw");
		name = rs.getString("name");
	} else {
		response.sendRedirect("LoginFailed.jsp?_id=" + id);
		return;
	}
	
	rs.close();
	stmt.close();
	conn.close();
	
} catch(Exception e) {
	e.printStackTrace();
}

// 패스워드가 맞는지 확인
if(stringDigestedPw.equals(DBStringDigestedPw)){
	response.sendRedirect("LoginSuccess.jsp?_id=" + id + "&_name=" + name);	
} else {
	response.sendRedirect("LoginFailed.jsp?_id=" + id);
}

%>

</body>
</html>