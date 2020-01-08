<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//MemberDao  객체의 참조값 얻어오기 
	MemberDao dao=MemberDao.getInstance();
	//회원 목록 얻어오기
	List<MemberDto> list=dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/step03_custom.css" />
</head>
<body>
<%-- 피 include 되는 jsp 페이지에 파라미터를 전달 해줄수 있다. --%>
<jsp:include page="../include/navbar.jsp">
	<jsp:param value="member" name="category"/>
</jsp:include>
<div class="container">
	<!-- 현재 페이지의 위치를 좀더 자세히 알려주는 breadcrumb -->
	<ol class="breadcrumb">
		<li><a href="list.jsp">목록</a></li>
	</ol>
	<h1>회원 목록 입니다.</h1>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>수정 하러 가기</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%for(MemberDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getAddr() %></td>
				<td>
					<a href="updateform.jsp?num=<%=tmp.getNum() %>">
						<!-- 스크린 리더기를 위한 기능 text 제공하기  -->
						<span class="sr-only">수정 하러 가기</span>
						<span class="glyphicon glyphicon-edit"></span>
					</a>
				</td>
				<td>
					<a href="delete.jsp?num=<%=tmp.getNum() %>">
						<span class="sr-only">삭제하기</span>
						<span class="glyphicon glyphicon-trash"></span>
					</a>
				</td>
			</tr>
		<%} %>
		</tbody>
	</table>
	<a href="insertform.jsp">회원추가 하러가기</a>
</div>
<%-- /include/footer.jsp --%>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>












