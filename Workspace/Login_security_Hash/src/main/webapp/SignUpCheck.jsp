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

String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String stringDigestedPw = null;

try {
	MessageDigest md5 = MessageDigest.getInstance("MD5");   // MD5 해시 함수 사용
	
	// 패스워드 평문 해싱
	md5.update(pw.getBytes());
	byte[] digestedPw = md5.digest();
	
	//해시값을 Base64 형태의 문자열로 변환
	stringDigestedPw = Base64.getEncoder().encodeToString(digestedPw);
	
	//데이터베이스 입력 파트
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	
	stmt.executeUpdate("insert into member (id, pw, name) values ('" + id + "','" + stringDigestedPw + "','" + name + "')");

	stmt.close();
	conn.close();
	
	String star = "";
	for(int i = 0; i < pw.length(); i++){
		star += '*';
	}
	
	out.println("<p>NAME : " + name);
	out.println("<p>ID : " + id);
	out.println("<p>PW : " + star);
	out.println("<p>입력이 완료되었습니다.");

} catch (NoSuchAlgorithmException e) {
	e.printStackTrace();
}

%>

</body>
</html>