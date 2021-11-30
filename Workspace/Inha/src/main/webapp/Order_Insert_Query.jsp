<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>상품 주문 확인</h1>
<jsp:useBean class="mall.OrderDAO" id="myOrder"></jsp:useBean>

<%
request.setCharacterEncoding("UTF-8");
String pid = request.getParameter("_pid");
String pname = request.getParameter("_pname");
String price = request.getParameter("_price");
String info = request.getParameter("_info");
String count = request.getParameter("_count");
String id = (String)session.getAttribute("__ID");

myOrder.insert(id, pid, Integer.parseInt(count));

out.println("<p>상품ID: " + pid);
out.println("<p>상품명: " + pname);
out.println("<p>상품가격: " + price);
out.println("<p>상품정보: " + info);
out.println("<p>주문사용자: " + id);
out.println("<p>주문수량: " + count);
out.println("<p>상품 주문이 완료되었습니다.");

%>

</body>
</html>

