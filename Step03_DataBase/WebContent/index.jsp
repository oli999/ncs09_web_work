<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>인덱스 페이지 입니다.</h1>
	<p>context path : ${pageContext.request.contextPath }</p>
	<ul>
		<li><a href="member/list.jsp">회원 목록보기(member table)</a></li>
	</ul>
</div>
</body>
</html>





