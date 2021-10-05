<%-- 성명 : 이정윤  학번 : 201845092 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실습1</title>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
out.println("ID : " + id + "<p>");
out.println("PW : " + pw + "<p>");

String[] userInterest = request.getParameterValues("interest");
out.println("관심분야 : ");
for(int i=0; i< userInterest.length; i++){
	out.println(userInterest[i]);
}
%>
</head>
<body>

</body>
</html>