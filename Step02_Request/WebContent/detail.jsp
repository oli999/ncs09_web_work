<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/detail.jsp</title>
</head>
<body>
<%
	String strNum=request.getParameter("num");
	int num=Integer.parseInt(strNum);
%>
<p><%=num %> 번 자세히 보기 ok!</p>
</body>
</html>






