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

<h1>회원정보 상세조회</h1>
<% 
	String d1 = request.getParameter("d1");
	String d2 = request.getParameter("d2");
	String d3 = request.getParameter("d3");
	String d4 = request.getParameter("d4");
	String d5 = request.getParameter("d5");
%>

ID : <%= d1 %><p>
성명 : <%= d2 %><p>
주소 : <%= d3 %><p>
종교 : <%= d4 %><p>
관심분야 : <%= d5 %><p>

<a href="Member_Update.jsp?d1=<%=d1%>&d2=<%=d2%>&d3=<%=d3%>&d4=<%=d4%>&d5=<%=d5%>">수정</a>
<a href="Member_Delete.jsp?d1=<%=d1%>&d2=<%=d2%>&d3=<%=d3%>&d4=<%=d4%>&d5=<%=d5%>">삭제</a>

</body>
</html>