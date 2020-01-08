<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//1. GET 방식 파라미터로 전달되는 삭제할 todo 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. TodoDao 를 이용해서 DB 에서 삭제
	TodoDao.getInstance().delete(num);
	//3. 리다일렉트 응답(요청을 다시 하라고 클라이언트에게 경로을 알려줌)
	response.sendRedirect("list.jsp");
%>    




