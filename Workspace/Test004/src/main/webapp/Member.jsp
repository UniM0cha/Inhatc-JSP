<!-- 성명 : 이정윤  학번 : 201845092 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 가입</h1>
	<Form Action="Test02.jsp" Method="post">
		성명<Input Type="text" name="name"><p>
		ID<Input Type="text" name="id"><p>
		암호<Input Type="password" name="pwd"><p>
		주소<Input Type="text" name="address"><p>
		집 전화번호<Input Type="tel" name="homeNum"><p>
		사무실 전화번호<Input Type="tel" name="officeNum"><p>
		핸드폰<Input Type="tel" name="phone"><p>
		이메일<Input Type="email" name="email"><p>
		관심분야<input type="text" name="favorite"><p>
		<input Type="submit" value="등록">
		<input type="reset" value="취소">
	</Form>
	
</body>
</html>