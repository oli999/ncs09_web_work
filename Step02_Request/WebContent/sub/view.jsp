<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/sub/view.jsp</title>
</head>
<body>
<%
	// GET 방식 전송 파라미터 3개 추출하기 
	String num=request.getParameter("num");
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
%>
<table>
	<tr>
		<th>번호</th>
		<td><%=num %></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><%=name %></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><%=addr %></td>
	</tr>
</table>
<br/>
<a href="/Step02_Request/index.jsp">인덱스로 가기</a>
</body>
</html>












