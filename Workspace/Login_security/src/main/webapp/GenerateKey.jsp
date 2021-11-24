<%@page import="java.io.*"%>
<%@page import="java.util.Base64"%>
<%@page import="javax.crypto.spec.*"%>
<%@page import="javax.crypto.*"%>
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
// 비밀키 생성 파트
KeyGenerator kg = KeyGenerator.getInstance("DES");                    // DES 알고리즘 사용
SecretKey key = kg.generateKey();                                     // generateKey로 비밀키 생성
byte[] encodedKey = key.getEncoded();
String stringKey = Base64.getEncoder().encodeToString(encodedKey);

/* SecretKeySpec keySpec = new SecretKeySpec(key.getEncoded(), "DES");   // 알고리즘에 사용하기 적합하도록 key specification으로 변환해야함 */

// 생성된 키를 서버에 저장
try {
     // 파일 객체 생성
	File file = new File("/Users/solstice/Desktop/Github/JSP_Practice/Workspace/Login_security/src/main/webapp/SecretKey.txt");
    FileWriter fw = new FileWriter(file) ;
      
     // 파일안에 문자열 쓰기
    fw.write(stringKey);
    fw.flush();
    fw.close();
	out.println("키가 생성되었습니다.");
 } catch (IOException e) {
     e.printStackTrace();
 }
 
/*  String sCipherBase64 = "";
 String sPublicKey = null;
 BufferedReader brPublicKey = null;
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
 } */
%>
</body>
</html>