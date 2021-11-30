<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.crypto.spec.*"%>
<%@page import="javax.crypto.*"%>
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
String stringCipheredPw = null;
String stringKey = null;
String stringIvBlock = null;

// 데이터베이스로부터 암호화된 패스워드 받아옴
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from member where id='" + id + "'");
	
	if(rs.next()){
		stringCipheredPw = rs.getString("pw");
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


// 복호화
// SecretKey.txt로부터 비밀키와 IV 받아옴
try {
	BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\solst\\Desktop\\Github\\JSP_Practice\\Workspace\\Login_security\\src\\main\\webapp\\SecretKey.txt"));
	
	stringKey = reader.readLine();
	stringIvBlock = reader.readLine();
	
	reader.close();
} catch(IOException e) {
	e.printStackTrace();
}

// String 형식의 키와 IV를 바이트 배열로 변경
byte[] decodedKey = Base64.getDecoder().decode(stringKey);
byte[] decodedIvBlock = Base64.getDecoder().decode(stringIvBlock);

// 알고리즘에 사용하기 적합하도록 specification으로 변환
SecretKeySpec keySpec = new SecretKeySpec(decodedKey, "DES");
IvParameterSpec ivSpec = new IvParameterSpec(decodedIvBlock);

// 데이터베이스로부터 받은 패스워드를 복호화 하는 파트, keySpec과 ivSpec 사용
Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding"); 	// 알고리즘, 암호화 모델, 패딩 방법 지정
cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);      		// 복호화 모듈, 키는 암호화한 키랑 같은 키

// Base64 형식의 pw를 바이트 배열로 변환
byte[] cipheredPw = Base64.getDecoder().decode(stringCipheredPw);
byte[] clearPw = cipher.doFinal(cipheredPw);					// 복호화 진행

// 문자열로 변환
String finalPw = new String(clearPw);

// 패스워드가 맞는지 확인
if(pw.equals(finalPw)){
	response.sendRedirect("LoginSuccess.jsp?_id=" + id + "&_name=" + name);	
} else {
	response.sendRedirect("LoginFailed.jsp?_id=" + id);
}

%>

</body>
</html>