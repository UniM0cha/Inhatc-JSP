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
	
	out.println("���� ������ : " + bufferSize);
	out.println("���� �ִ� ���� ������ : " + bufferRemaining);
%>
<p>
test 1 <p>

<!-- test 1�� �����ȴ� -->
<% out.clear(); %>

test 2 <p>
test 3 <p>

<% out.close(); %>

<!-- ���۰� ������ ������ ������ �ʴ´� -->
test 4 <p>


</body>
</html>