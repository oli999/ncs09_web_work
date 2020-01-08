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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/step03_custom.css" />
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</head>
<body>
<jsp:include page="../include/navbar.jsp">
	<jsp:param value="todo" name="category"/>
</jsp:include>
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
		<%for(TodoDto tmp: list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getContent() %></td>
				<td><%=tmp.getRegdate() %></td>
				<td>
					<a href="updateform.jsp?num=<%=tmp.getNum() %>">
						<!-- 스크린 리더기를 위한 기능 text 제공하기  -->
						<span class="sr-only">수정 하러 가기</span>
						<span class="glyphicon glyphicon-edit"></span>
					</a>
				</td>
				<td>
					<a href="javascript:deleteConfirm(<%=tmp.getNum() %>)">
						<span class="sr-only">삭제하기</span>
						<span class="glyphicon glyphicon-trash"></span>
					</a>
				</td>
			</tr>
		<%} %>
		</tbody>
	</table>
<a href="insertform.jsp">할일 추가하기</a>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>
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




