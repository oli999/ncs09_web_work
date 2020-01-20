<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//폼 전송되는 문자열 읽어오기
	String msg=request.getParameter("msg");
	if(msg != null){
		//쿠키 객체를 생성  new Cookie(key, value);
		Cookie cookie=new Cookie("savedMsg", msg);
		//쿠키 유지 시간을 초단위로 지정한다.
		cookie.setMaxAge(30);
		//응답할때 쿠키도 같이 응답한다.
		response.addCookie(cookie);	
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cook/test1.jsp</title>
</head>
<body>
<h3>쿠키 테스트</h3>
<form action="test1.jsp" method="post">
	<label for="msg">쿠키로 저장할 문자열 입력</label>
	<input type="text" name="msg" id="msg"/>
	<button type="submit">저장</button>
</form>
<a href="read1.jsp">저장된 쿠키값 읽어오기</a>
</body>
</html>






