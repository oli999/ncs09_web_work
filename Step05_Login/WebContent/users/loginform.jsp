<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/loginform.jsp</title>
<jsp:include page="../include/resource.jsp"></jsp:include>
<style>
	/* stylelint-disable selector-no-qualifying-type, property-no-vendor-prefix */
	
	body {
	  padding-top: 40px;
	  padding-bottom: 40px;
	  background-color: #eee;
	}
	
	.form-signin {
	  max-width: 330px;
	  padding: 15px;
	  margin: 0 auto;
	}
	.form-signin .form-signin-heading,
	.form-signin .checkbox {
	  margin-bottom: 10px;
	}
	.form-signin .checkbox {
	  font-weight: 400;
	}
	.form-signin .form-control {
	  position: relative;
	  -webkit-box-sizing: border-box;
	  -moz-box-sizing: border-box;
	  box-sizing: border-box;
	  height: auto;
	  padding: 10px;
	  font-size: 16px;
	}
	.form-signin .form-control:focus {
	  z-index: 2;
	}
	.form-signin input[type="email"] {
	  margin-bottom: -1px;
	  border-bottom-right-radius: 0;
	  border-bottom-left-radius: 0;
	}
	.form-signin input[type="password"] {
	  margin-bottom: 10px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
</style>
</head>
<body>
<%
	// "url" 이라는 파라미터가 넘어오는지 읽어와 본다.  
	String url=request.getParameter("url");
	if(url==null){//만일 없으면 
		//로그인 성공후에 index.jsp 페이지로 보낼수 있도록 구성한다. 
		url=request.getContextPath()+"/index.jsp";
	}
%>
<div class="container">
	<form class="form-signin" action="login.jsp" method="post">
		<%-- 폼 제출할때 목적지 정보도 같이 보내준다. --%>
		<input type="hidden" name="url" value="<%=url %>" />
		<h2 class="form-signin-heading">로그인 정보 입력</h2>
		<label for="id" class="sr-only">아이디</label>
		<input type="text" id="id" name="id" class="form-control" placeholder="아이디"/>
		<label for="pwd" class="sr-only">비밀번호</label>
		<input type="password" id="pwd" name="pwd" class="form-control" placeholder="비밀번호">
		<div class="checkbox">
			<label>
				<input type="checkbox"/>아이디, 비밀번호 저장
			</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
	</form>	
</div>
</body>
</html>







