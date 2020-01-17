<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// category  라는 파라미터 명으로 전달된 문자열이 있는지 읽어와 본다.
	String category=request.getParameter("category");
	if(category==null){//만일 전달된 내용이 없으면
		category=""; //빈 문자열을 대입한다. (NullPointerExcpetion 방지)
	}
	
	//로그인된 아이디 읽어와 보기
	String id=(String)session.getAttribute("id");
%>    
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
				<li <%if(category.equals("cafe")){%>class="active"<%}%>><a href="${pageContext.request.contextPath }/cafe/list.jsp">Cafe</a></li>
				<li <%if(category.equals("file")){%>class="active"<%}%>><a href="${pageContext.request.contextPath }/file/list.jsp">자료실</a></li>
				<li><a href="#">Shop</a></li>		
			</ul>
			<%if(id==null){ %>
				<div class="pull-right">
					<a class="btn btn-primary navbar-btn btn-xs" href="${pageContext.request.contextPath }/users/loginform.jsp">로그인</a>
					<a class="btn btn-warning navbar-btn btn-xs" href="${pageContext.request.contextPath }/users/signup_form.jsp">회원가입</a>
				</div>
			<%}else{ %>
				<p class="navbar-text pull-right">
					<strong><a class="navbar-link" href="${pageContext.request.contextPath }/users/private/info.jsp"><%=id %></a></strong>
					<a class="navbar-link" href="${pageContext.request.contextPath }/users/logout.jsp">로그아웃</a> 
				</p>
			<%} %>
		</div>
	</div>
</div>


