<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test4/insert.jsp</title>
</head>
<body>
<%
	// post 방식 전송된 파라미터 읽어오기
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
%>
<p> 이름 : <strong><%=name %></strong></p>
<p> 주소 : <strong><%=addr %></strong></p>
</body>
</html>







