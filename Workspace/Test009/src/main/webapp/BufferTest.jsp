<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int bufferSize = out.getBufferSize();
	int bufferRemaining = out.getRemaining();
	
	out.println("버퍼 사이즈 : " + bufferSize);
	out.println("남아 있는 버퍼 사이즈 : " + bufferRemaining);
%>
<p>
test 1 <p>

<!-- test 1이 삭제된다 -->
<% out.clear(); %>

test 2 <p>
test 3 <p>

<% out.close(); %>

<!-- 버퍼가 닫히기 때문에 나오지 않는다 -->
test 4 <p>


</body>
</html>