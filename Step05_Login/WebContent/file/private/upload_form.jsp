<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/file/private/upload_form.jsp</title>
<jsp:include page="../../include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../include/navbar.jsp">
	<jsp:param value="file" name="category"/>
</jsp:include>
<div class="container">
	<h1>파일 업로드 양식</h1>
	<form action="upload.jsp" method="post" 
		enctype="multipart/form-data">
		<div class="form-group">
			<label for="title">제목</label>
			<input class="form-control" type="text" 
				name="title" id="title" />
		</div>
		<div class="form-group">
			<label for="myFile">첨부파일</label>
			<input class="form-control" type="file" 
				name="myFile" id="myFile" />
		</div>
		<button class="btn btn-primary" type="submit">업로드</button>
		<button class="btn btn-warning">취소</button>
	</form>
</div>
</body>
</html>






