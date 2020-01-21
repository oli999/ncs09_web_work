<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/el/test03.jsp</title>
</head>
<body>
<h3>EL 테스트중...</h3>
<%
	String myNick=(String)session.getAttribute("myNick");
%>
<p> 세션에 저장된 별명 : <strong><%=myNick %></strong></p>

<%-- 위의 작업을 EL 을 이용하면 아래와 같다. --%>

<p> 세션에 저장된 별명 : <strong>${sessionScope.myNick }</strong></p>
</body>
</html>











