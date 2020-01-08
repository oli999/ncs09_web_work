<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/updateform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/step03_custom.css" />
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</head>
<body>
<%
	//1. GET 방식 파라미터로 전달되는 수정할 todo 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. TodoDao 객체를 이용해서 DB 에서 해당 정보를 읽어온다.
	TodoDto dto=TodoDao.getInstance().getData(num);
	//3. 수정폼을 응답한다. 
%>
<jsp:include page="../include/navbar.jsp">
	<jsp:param value="todo" name="category"/>
</jsp:include>
<div class="container">
	<ol class="breadcrumb">
		<li><a href="list.jsp">목록</a></li>
		<li>수정 양식</li>
	</ol>
	<h1>할일 수정 양식 입니다.</h1>
	<p> 할일 번호 : <strong><%=dto.getNum() %></strong></p>
	<p> 등록일 : <strong><%=dto.getRegdate() %></strong></p>
	<form action="update.jsp" method="post">
		<%-- 할일 수정할때 필요한 번호를 폼 전송할때 같이 전송 되도록 --%>
		<input type="hidden" name="num" value="<%=dto.getNum() %>" />
		<div class="form-group">
			<label for="content">할일</label>
			<input class="form-control" type="text" id="content" name="content" 
			value="<%=dto.getContent()%>"/>
		</div>
		<button class="btn btn-primary" type="submit">수정 확인</button>
		<button class="btn btn-warning">취소</button>
	</form>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>







