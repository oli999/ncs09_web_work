<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//폼 전송된 파라미터 읽어오기
	String id=request.getParameter("id");
	//checkbox 를 체크 했는지 읽어오기 (체크하지 않았으면 null 이다.)
	String isSave=request.getParameter("isSave");
	if(isSave != null){
		//아이디를 쿠키로 저장하기
		Cookie cook=new Cookie("savedId", id);
		//테스트 임으로 60초만 유지 되도록 한다.
		cook.setMaxAge(60);
		//응답객체(HttpServletResponse) 를 이용해서 쿠키도 같이 응답하기
		response.addCookie(cook);
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cook/login.jsp</title>
</head>
<body>
<p> <%=id %> 님 로그인 되었습니다.</p>
<a href="test2.jsp">로그인 폼으로 돌아가기</a>
</body>
</html>







