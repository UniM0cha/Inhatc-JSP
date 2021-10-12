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

<h1>회원정보 리스트</h1>
<table border="1" style="width:500px;">
	<tr>
		<th>ID</th>
		<th>성명</th>
		<th>주소</th>
		<th>종교</th>
		<th>관심분야</th>
	</tr>
	<tr>
		<td><a href="Member_Detail.jsp?d1=hong&d2=홍길동&d3=서울&d4=기독교&d5=웹">hong</a></td>
		<td>홍길동</td>
		<td>서울</td>
		<td>기독교</td>
		<td>웹</td>
	</tr>
	<tr>
		<td><a href="Member_Detail.jsp?d1=kim&d2=김유신&d3=인천&d4=천주교&d5=모바일">kim</a></td>
		<td>김유신</td>
		<td>인천</td>
		<td>천주교</td>
		<td>모바일</td>
	</tr>
	<tr>
		<td><a href="Member_Detail.jsp?d1=lee&d2=이순신&d3=부산&d4=불교&d5=임베디드">lee</a></td>
		<td>이순신</td>
		<td>부산</td>
		<td>불교</td>
		<td>임베디드</td>
	</tr>
</table>

</body>
</html>