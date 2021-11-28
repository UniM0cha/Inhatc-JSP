<%@page import="java.security.SecureRandom"%>
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
	KeyGenerator kg = KeyGenerator.getInstance("DES"); // DES 알고리즘 사용
	SecretKey key = kg.generateKey(); // generateKey로 비밀키 생성
	byte[] encodedKey = key.getEncoded();
	String stringKey = Base64.getEncoder().encodeToString(encodedKey);

	// IV 생성 파트
	Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
	SecureRandom csprng = SecureRandom.getInstance("SHA1PRNG");
	byte[] ivBlock = new byte[cipher.getBlockSize()];
	csprng.nextBytes(ivBlock);
	// 텍스트로 저장하기 위해 Base64로 변환
	String stringIvBlock = Base64.getEncoder().encodeToString(ivBlock);

	// 생성된 키와 IV를 SecretKey.txt에 저장
	try {
		// 파일 객체 생성
		File file = new File("C:\\Users\\solst\\Desktop\\Github\\JSP_Practice\\Workspace\\Login_security\\src\\main\\webapp\\SecretKey.txt");
		FileWriter fw = new FileWriter(file);

		fw.write(stringKey + '\n');
		fw.write(stringIvBlock);

		fw.flush();
		fw.close();
		out.println("키가 생성되었습니다.");
	} catch (IOException e) {
		e.printStackTrace();
	}
	%>
</body>
</html>