<%@page import="test.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//폼 전송 파라미터로 전달되는 삭제할 글번호와 비밀번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
 	String pwd=request.getParameter("pwd");
 	//저장된 비밀 번호를 DB 에서 읽어온다.
 	String savedPwd=BoardDao.getInstance().getData(num).getPwd();
 	//작업의 성공 여부를 담을 boolean type 지역변수 선언하고 초기값 부여
 	boolean isSuccess=false;
 	//DB 에 저장된 비밀번호와 입력한 비밀번호가 만일 같으면
 	if(savedPwd.equals(pwd)){
 		//삭제한다.
 		isSuccess=BoardDao.getInstance().delete(num);
 	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/delete.jsp</title>
</head>
<body>
<div class="container">
	<%if(isSuccess){ %>
		<p><%=num %> 번 글을 삭제 했습니다.</p>
		<a href="list.jsp">확인</a>
	<%}else{ %>
		<p>삭제 실패!</p>
		<a href="detail.jsp?num=<%=num %>">돌아가기</a>
	<%} %>
</div>
</body>
</html>









