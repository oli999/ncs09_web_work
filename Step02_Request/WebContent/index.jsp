<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="/Step02_Request/resources/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>인덱스 페이지 입니다.</h1>
	<ul>
		<li><a href="/Step02_Request/detail?num=1">자세히 보기1</a></li>
		<li><a href="/Step02_Request/detail?num=2">자세히 보기2</a></li>
		<li><a href="/Step02_Request/detail?num=3">자세히 보기3</a></li>
		<li><a href="/Step02_Request/detail.jsp?num=1">자세히 보기1 (jsp)</a></li>
		<li><a href="/Step02_Request/detail.jsp?num=2">자세히 보기2 (jsp)</a></li>
		<li><a href="/Step02_Request/detail.jsp?num=3">자세히 보기3 (jsp)</a></li>
		<!-- GET 방식 전송 파라미터가 여러개 이면 & 로 구분해서 작성하면 된다. -->
		<li><a href="/Step02_Request/sub/view.jsp?num=1&name=kimgura&addr=nrg">보기</a></li>
	</ul>
</div>
</body>
</html>





