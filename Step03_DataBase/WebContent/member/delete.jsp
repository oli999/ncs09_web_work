<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 파라미터로 전달되는 삭제할 회원의 번호를 읽어와서 
	int num=Integer.parseInt(request.getParameter("num"));
	//2. MemberDao  객체를 이용해서 DB 에서 삭제하고
	MemberDao dao=MemberDao.getInstance();
	boolean isSuccess=dao.delete(num);
	//3. 응답한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/delete.jsp</title>
</head>
<body>
<%if(isSuccess){%>
	<script>
		//알림창 띄우기 
		alert("<%=num%> 번 회원의 정보를 삭제 했습니다.");
		//javascript 에서 페이지 이동 
		location.href="list.jsp";
	</script>
<%}else{%>
	<script>
		alert("삭제 실패!");
		location.href="list.jsp";
	</script>
<%} %>
</body>
</html>



