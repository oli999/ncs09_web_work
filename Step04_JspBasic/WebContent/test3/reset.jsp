<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test3/reset.jsp</title>
</head>
<body>
<%
	// request 에 특정 키값으로 저장된 data 삭제 하기
	request.removeAttribute("myName");
 	// session 에 특정 키값으로 저장된 data 삭제하기 
	//session.removeAttribute("yourName");
 	// 만일 여러개를 한번에 다 지우고 싶다면
 	session.invalidate(); //session 초기화 
 	
	application.removeAttribute("ourName");
%>
<p>모든 영역에 있는 내용을 삭제 했습니다.</p>
<a href="other.jsp">확인하러 가기</a>
</body>
</html>







