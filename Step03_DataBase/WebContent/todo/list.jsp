<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//할일 목록 읽어오기
	List<TodoDto> list=TodoDao.getInstance().getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
	body{
		padding-top: 50px;
	}
</style>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">Acorn</a>
		<ul class="nav navbar-nav">
			<li><a href="${pageContext.request.contextPath }/member/list.jsp">회원관리</a></li>
			<li class="active"><a href="${pageContext.request.contextPath }/todo/list.jsp">할일목록</a></li>
			<li><a href="#">쇼핑</a></li>
		</ul>
	</div>
</div>
<div class="container">
	<!-- 현재 페이지의 위치를 좀더 자세히 알려주는 breadcrumb -->
	<ol class="breadcrumb">
		<li><a href="list.jsp">목록</a></li>
	</ol>
	<h1>할일 목록입니다.</h1>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>내용</th>
				<th>등록일</th>
				<th>수정기능</th>
				<th>삭제기능</th>
			</tr>
		</thead>
		<tbody>
		<%for(int i=0; i<list.size(); i++){ 
			TodoDto tmp=list.get(i);%>
			<tr>
				<td><%=i+1 %></td>
				<td><%=tmp.getContent() %></td>
				<td><%=tmp.getRegdate() %></td>
				<td><a href="updateform.jsp?num=<%=tmp.getNum()%>&seq=<%=i+1%>">수정</a></td>
				<td><a href="javascript:deleteConfirm(<%=tmp.getNum() %>)">삭제</a></td>
			</tr>
		<%} %>
		</tbody>
	</table>
<a href="insertform.jsp">할일 추가하기</a>
</div>
<script>
	function deleteConfirm(num){
		var isDelete=confirm(num+" 번 todo 를 삭제 하시겠습니까?");
		if(isDelete){
			location.href="delete.jsp?num="+num;
		}
	}
</script>
</body>
</html>




