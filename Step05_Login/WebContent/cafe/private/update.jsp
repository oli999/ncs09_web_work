<%@page import="test.cafe.dao.CafeDao"%>
<%@page import="test.cafe.dto.CafeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼 전송되는 수정할 글 정보를 파라미터에서 추출한다.
	int num=Integer.parseInt(request.getParameter("num"));
 	String title=request.getParameter("title");
 	String content=request.getParameter("content");
 	//2. DB 에 수정반영하고
 	CafeDto dto=new CafeDto();
 	dto.setNum(num);
 	dto.setTitle(title);
 	dto.setContent(content);
 	boolean isSuccess=CafeDao.getInstance().update(dto);
 	//3. 응답한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cafe/private/update.jsp</title>
</head>
<body>
<div class="container">
	<%if(isSuccess){ %>
		<script>
			alert("글을 수정했습니다.");
			location.href="${pageContext.request.contextPath }/cafe/detail.jsp?num=<%=num%>";
		</script>
	<%}else{ %>
		<h1>Alert</h1>
		<p>
			글 수정 실패!
			<a href="updateform.jsp?num=<%=num %>">다시 시도</a>
		</p>
	<%} %>
</div>
</body>
</html>



