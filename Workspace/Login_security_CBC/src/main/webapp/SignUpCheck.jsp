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

String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String stringKey = null;
String stringIvBlock = null;

// SecretKey.txt로부터 비밀키와 IV 받아옴
try {
	BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\solst\\Desktop\\Github\\JSP_Practice\\Workspace\\Login_security\\src\\main\\webapp\\SecretKey.txt"));
	stringKey = reader.readLine();
	stringIvBlock = reader.readLine();
	// 비밀키 출력
	System.out.println("비밀키: " + stringKey);
	System.out.println("IV: " + stringIvBlock);
	reader.close();
} catch(IOException e) {
	e.printStackTrace();
}

// String 형식의 키와 IV를 바이트 배열로 전환
byte[] decodedKey = Base64.getDecoder().decode(stringKey);
byte[] decodedIvBlock = Base64.getDecoder().decode(stringIvBlock);

// 알고리즘에 사용하기 적합하도록 specification으로 변환
SecretKeySpec keySpec = new SecretKeySpec(decodedKey, "DES");
IvParameterSpec ivSpec = new IvParameterSpec(decodedIvBlock);

//pw를 암호화 하는 파트, keySpec과 ivSpec 이용
Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");   // 알고리즘, 암호화 모델, 패딩 방법 지정
cipher.init(Cipher.ENCRYPT_MODE, keySpec, ivSpec);            // init : 암호화인지, 복호화인지 설정
byte[] cipheredPw = cipher.doFinal(pw.getBytes());     		  // 비밀번호 암호화 진행

// 암호문을 Base64 형태의 문자열로 변환
String stringCipheredPw = Base64.getEncoder().encodeToString(cipheredPw);


//데이터베이스 입력 파트
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	
	stmt.executeUpdate("insert into member (id, pw, name) values ('" + id + "','" + stringCipheredPw + "','" + name + "')");

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
	
} catch(Exception e) {
	e.printStackTrace();
}
%>

</body>
</html>