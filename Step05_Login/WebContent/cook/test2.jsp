<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키 읽어오기
	Cookie[] cookies=request.getCookies();
	//저장된 아이디를 담을 변수
	String savedId=""; //빈 문자열을 초기값으로 넣어둔다.
	if(cookies != null){
		for(Cookie tmp:cookies){
			//만일 "savedId" 라는 키값으로 저장된 쿠키값이 있으면
			if(tmp.getName().equals("savedId")){
				//저장된 쿠키값을 읽어와서 변수에 담는다.
				savedId=tmp.getValue();
			}
		}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cook/test2.jsp</title>
</head>
<body>
<form action="login.jsp" method="post">
	<div>
		<label for="id">아이디</label>
		<input type="text" name="id" id="id" value="<%=savedId%>"/>
	</div>
	<div>
		<label>
			아이디 저장 
			<input type="checkbox" name="isSave" value="yes"/>
		</label>
	</div>
	<button type="submit">로그인</button>
</form>
</body>
</html>





