<%@page import="mall.OrderVO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>상품 주문 현황</h1><p>

<jsp:useBean class="mall.OrderDAO" id="myOrder"></jsp:useBean>

로그인 사용자: <%= session.getAttribute("__ID")%><p>

<%
List orderList = myOrder.select();

out.println("<table border='1'>");

for(int i = 0; i < orderList.size(); i++){
	OrderVO vo = (OrderVO)orderList.get(i);
	
	out.println("<tr>");
	out.println("<td>" + vo.getOid() + "</a></td>");
	out.println("<td>" + vo.getId() + "</td>");
	out.println("<td>" + vo.getPid() + "</td>");
	out.println("<td>" + vo.getCount() + "</td>");

	out.println("</tr>");
}


out.println("</table>");

%>

</body>
</html>