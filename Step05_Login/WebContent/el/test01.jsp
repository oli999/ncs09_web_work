<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/el/test01.jsp</title>
</head>
<body>
<h3>EL 테스트 중...</h3>
<%
	//request 에 "myName" 이라는 키값으로 담긴 String type 읽어오기 
	String myName=(String)request.getAttribute("myName");
%>
<p> myName : <strong><%=myName %></strong></p>

<%-- 위의 코드는 아래의 EL 로 대체 할수 있다. --%>

<p> myName : <strong>${requestScope.myName }</strong></p>
</body>
</html>




















