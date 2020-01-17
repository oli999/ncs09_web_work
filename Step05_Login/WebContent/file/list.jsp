<%@page import="test.file.dao.FileDao"%>
<%@page import="test.file.dto.FileDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. DB 에서 파일 목록을 얻어와서
	List<FileDto> list=FileDao.getInstance().getList();
	//2. 응답하기 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/file/list.jsp</title>
<jsp:include page="../include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../include/navbar.jsp">
	<jsp:param value="file" name="category"/>
</jsp:include>
<div class="container">
	<h1>파일 목록 입니다.</h1>
	<table class="table table-striped table-condensed">
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>파일명</th>
				<th>파일크기</th>
				<th>다운횟수</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
		<%for(FileDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getWriter() %></td>
				<td><%=tmp.getTitle() %></td>
				<td>
					<a href="download.jsp?num=<%=tmp.getNum() %>">
						<%=tmp.getOrgFileName() %>
					</a>
				</td>
				<td><%=tmp.getFileSize() %></td>
				<td><%=tmp.getDownCount() %></td>
				<td><%=tmp.getRegdate() %></td>
			</tr>
		<%} %>	
		</tbody>
	</table>
	<a href="private/upload_form.jsp">파일 업로드</a>
</div>
</body>



</html>




