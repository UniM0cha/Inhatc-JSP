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
<body>

<%

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");

//키 생성 파트
/* KeyGenerator kg = KeyGenerator.getInstance("DES");                    // DES 알고리즘 사용
SecretKey key = kg.generateKey();                                     // generateKey */

String sCipherBase64 = "";
String sPublicKey = null;
FileReader brPublicKey = null;
try {
    //암호화를 위해 저장된 공개키를 읽어옴 
        brPublicKey = new BufferedReader(new FileReader("PublicKey.txt"));
        sPublicKey = brPublicKey.readLine();     // First Line Read
    } catch (IOException e) {
        e.printStackTrace();
    } finally {
        try {
            if (brPublicKey != null)
                brPublicKey.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
}


SecretKeySpec keySpec = new SecretKeySpec(key.getEncoded(), "DES");   // 알고리즘에 사용하기 적합하도록 key specification으로 변환해야함

//pw를 암호화 하는 파트
//CBC로 설정하면 시스템이 알아서 IV를 생성한다.
Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");   // 알고리즘, 암호화 모델, 패딩 방법 지정
cipher.init(Cipher.ENCRYPT_MODE, keySpec);                    // init : 암호화인지, 복호화인지 설정
byte[] cipheredPw = cipher.doFinal(pw.getBytes());     		  // 비밀번호 암호화 진행

//암호문 출력
for (int i = 0; i < cipheredPw.length; i++) {
	System.out.printf("%02X", cipheredPw[i]);
}
System.out.println();



//ciphertext를 복호화 하는 파트
IvParameterSpec ivSpec = new IvParameterSpec(cipher.getIV());
cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);      // 복호화 모듈, 키는 암호화한 키랑 같은 키
byte[] cleartext = cipher.doFinal(cipheredPw);

//평문 출력
System.out.println(new String(cleartext));




//데이터베이스 입력 파트
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_c", "root", "12345678");
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

</body>
</html>