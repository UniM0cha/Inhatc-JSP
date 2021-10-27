<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입</h1>

<form action="result.jsp" method="get">

	성명 : <input type="text" name="name"> <p>
	ID : <input type="text" name="id"> <p>
	암호 : <input type="password" name="password"> <p>
	주소 : <input type="text" name="address"> <p>
	전화번호 : <input type="tel" name="tel"> <p>
	
	종교 : 
	<input type="radio" name="religion" value="기독교">기독교
	<input type="radio" name="religion" value="천주교">천주교
	<input type="radio" name="religion" value="불교">불교 <p>
	
	관심분야 :
	<input type="checkbox" name="hobby" value="게임">게임
	<input type="checkbox" name="hobby" value="쇼핑">쇼핑
	<input type="checkbox" name="hobby" value="교육">교육 <p>
	
	<input type="submit" value="등록">
	<input type="reset" value="취소">

</form>

</body>
</html>