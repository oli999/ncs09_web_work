<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간 페이지</title>
</head>
<body>
<%
	Date d=new Date();
	String info=d.toString();
%>
<p> 현재 시간 : <strong><%=info %></strong></p>
</body>
</html>





