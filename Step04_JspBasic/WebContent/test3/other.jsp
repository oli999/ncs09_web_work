<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request 에 담긴 String type 얻어내기
	String myName=(String)request.getAttribute("myName");
	//session 에 담긴 String type 얻어내기
	String yourName=(String)session.getAttribute("yourName");
	//application 에 담긴 String type 얻어내기
	String ourName=(String)application.getAttribute("ourName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test3/other.jsp</title>
</head>
<body>
	<p>request 의 myName : <strong><%=myName %></strong></p>
	<p>session 의 yourName : <strong><%=yourName %></strong></p>
	<p>application 의 ourName : <strong><%=ourName %></strong></p>
	<a href="reset.jsp">모든 영역에 담긴 내용 삭제 하러 가기</a>
</body>
</html>




