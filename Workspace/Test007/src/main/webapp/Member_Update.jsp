<%-- 성명 : 이정윤  학번 : 201845092 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>회원정보 수정</h1>
<%
String d1 = request.getParameter("d1");
String d2 = request.getParameter("d2");
String d3 = request.getParameter("d3");
String d4 = request.getParameter("d4");
String d5 = request.getParameter("d5");
%>

<form action="Member_Update_OK.jsp" method="get">
	ID : <input type="text" name="d1" value="<%=d1%>"><p>
	성명 : <input type="text" name="d2" value="<%=d2%>"><p>
	주소 : <input type="text" name="d3" value="<%=d3%>"><p>
	종교 : <input type="text" name="d4" value="<%=d4%>"><p>
	관심분야 : <input type="text" name="d5" value="<%=d5%>"><p>
	<input type="submit" value="수정">
	<input type="reset" value="취소">
</form>

</body>
</html>