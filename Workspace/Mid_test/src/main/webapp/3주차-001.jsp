<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>

  <body>

    <%
 		String str = "hello, welcome to JSP world";
      	int count = str.length();
      	
		Date d = new Date();
    %>


      입력되어 있는 문자열의 길이는 <%= str.length() %> 입니다. <br>
      JSP 문자는 <%= str.indexOf("JSP") %>번째에 위치하고 있습니다. <br>
      입력 문자열을 소문자로 변환한 결과는 <%= str.toLowerCase() %> 입니다 <br>
      입력 문자열을 대문자로 변환한 결과는 <%= str.toUpperCase() %> 입니다 <p>
      
      오늘은 <%= d.getYear() + 1900 %>년 <%= d.getMonth() + 1 %>월 <%= d.getDate() %>일 입니다.

  </body>

  </html>