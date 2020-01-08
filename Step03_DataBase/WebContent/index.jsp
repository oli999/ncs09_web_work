<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
	/* navbar 가 상단에 고정(fixed) 되어 있기 때문에 공간이 남는다. */
	body{
		padding-top: 50px;
	}
</style>
<!-- jquery + bootstrap javascript 로딩 -->
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<!-- 홈페이지 링크와 버튼을 넣어둘 div -->
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">Acorn</a>
			<button class="navbar-toggle" 
				data-toggle="collapse" 
				data-target="#one">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<!-- xs 영역에서는 숨겨졌다가 버튼을 누르면 나오게 할 컨텐츠를 넣을 div -->
		<div class="collapse navbar-collapse" id="one">
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath }/member/list.jsp">회원관리</a></li>
				<li><a href="${pageContext.request.contextPath }/todo/list.jsp">할일목록</a></li>
				<li><a href="#">쇼핑</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="container">
	<h1>인덱스 페이지 입니다.</h1>
	<p>context path : ${pageContext.request.contextPath }</p>
	<ul>
		<li><a href="member/list.jsp">회원 목록보기(member table)</a></li>
		<li><a href="todo/list.jsp">할일목록(todo table)</a></li>
	</ul>
</div>
</body>
</html>





