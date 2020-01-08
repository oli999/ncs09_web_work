<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insertform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/step03_custom.css" />
</head>
<body>
<jsp:include page="../include/navbar.jsp">
	<jsp:param value="member" name="category"/>
</jsp:include>
<div class="container">
	<!-- 현재 페이지의 위치를 좀더 자세히 알려주는 breadcrumb -->
	<ol class="breadcrumb">
		<li><a href="list.jsp">목록</a></li>
		<li>회원 추가 폼</li>
	</ol>
	<h1>회원정보 추가 폼 입니다.</h1>
	<form action="insert.jsp" method="post">
		<div class="form-group">
			<label for="name">이름</label>
			<input class="form-control" type="text" name="name" id="name"/>
		</div>
		<div class="form-group">
			<label for="addr">주소</label>
			<input class="form-control" type="text" name="addr" id="addr"/>
		</div>
		<button class="btn btn-primary" type="submit">추가</button>
	</form>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>






