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
String name = request.getParameter("name");
String id = request.getParameter("id");
String password = request.getParameter("password");
String address = request.getParameter("address");
String tel = request.getParameter("tel");

String religion = request.getParameter("religion");
String[] hobby = request.getParameterValues("hobby");
%>

안녕하세요! 저의 이름은 <%= name %> 입니다. <br>
아이디는 <%= id %> 이고, 패스워드는... 원래 알려주면 안되긴 하지만 <%= password %> 입니다. <br>
주소는 <%= address %> 이구요, 전화번호는 <%= tel %> 입니다! <br>
종교는 <%= religion %>, 관심분야는 <% for(String s : hobby)out.println(s); %> 입니다~ <p>
만반잘부!
</body>
</html>