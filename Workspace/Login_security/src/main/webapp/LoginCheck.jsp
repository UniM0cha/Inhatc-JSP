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
<body>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_c", "root", "12345678");
	Statement stmt = conn.createStatement();
	
	
	
	
	
	
	
	
	
	
	
	
	
	ResultSet rs = stmt.executeQuery("select * from member where id='" + id + "' and pw='" + pw + "'");
	
	if(rs.next()){
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

// 키 생성 파트
KeyGenerator kg = KeyGenerator.getInstance("DES");                    // DES 알고리즘 사용
SecretKey key = kg.generateKey();                                     // generateKey로 비밀키 생성
SecretKeySpec keySpec = new SecretKeySpec(key.getEncoded(), "DES");   // 알고리즘에 사용하기 적합하도록 key specification으로 변환해야함

// plaintext를 암호화 하는 파트
String plaintext = "This is a secret message!";
// CBC로 설정하면 시스템이 알아서 IV를 생성한다.
Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");   // 알고리즘, 암호화 모델, 패딩 방법 지정
cipher.init(Cipher.ENCRYPT_MODE, keySpec);                    // init : 암호화인지, 복호화인지 설정
byte[] ciphertext = cipher.doFinal(plaintext.getBytes());     // 암호화 진행
// dofinal : 메시지의 길이가 짧을 때
// update : 메시지의 길이가 길 때

// 암호문 출력
for (int i = 0; i < ciphertext.length; i++) {
  System.out.printf("%02X", ciphertext[i]);
}
System.out.println();

// ciphertext를 복호화 하는 파트
IvParameterSpec ivSpec = new IvParameterSpec(cipher.getIV());
cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);      // 복호화 모듈, 키는 암호화한 키랑 같은 키
byte[] cleartext = cipher.doFinal(ciphertext);

// 평문 출력
System.out.println(new String(cleartext));



%>

</body>
</html>