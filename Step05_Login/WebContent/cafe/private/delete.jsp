<%@page import="test.cafe.dao.CafeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 삭제할 글번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	
	//세션의 아이디와 글 작성자를 비교해서 같을때만 삭제한다. 
	String id=(String)session.getAttribute("id");
	//글작성자
	String writer=CafeDao.getInstance().getData(num).getWriter();
	//아이디와 글 작성자와 같은지 여부
	boolean isEqual=id.equals(writer);
	if(!isEqual){
		//에러를 응답하고 
		response.sendError(HttpServletResponse.SC_FORBIDDEN,
				"남의 글 삭제 하기 없기!");
		//메소드를 종료한다.
		return;
	}
	
	//2. DB 에서 삭제 한다.
	boolean isSuccess=CafeDao.getInstance().delete(num);
	//3. 응답한다
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/delete.jsp</title>
<jsp:include page="../../include/resource.jsp"></jsp:include>
</head>
<body>
<div class="container">
	<%if(isSuccess){ %>
		<script>
			alert("<%=num%> 번 글을 삭제 했습니다.");
			location.href="${pageContext.request.contextPath }/cafe/list.jsp";
		</script>
	<%}else{ %>
		<h1>Alert</h1>
		<p class="alert alert-danger">
			글 삭제 실패!
			<a class="alert-link" 
				href="${pageContext.request.contextPath }/cafe/detail.jsp?num=<%=num %>">돌아 가기</a>
		</p>
	<%} %>
</div>
</body>
</html>




