<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키 읽어오기
	Cookie[] cookies=request.getCookies();
	//팝업을 띄울수 있는지 여부 
	boolean canPopup=true;
	if(cookies != null){
		//반복문 돌면서 모든 쿠키를 참조해서 
		for(Cookie tmp:cookies){
			// "isPopup" 이라는 쿠키 이름으로 저장된 값이 있으면
			if(tmp.getName().equals("isPopup")){
				//팝업을 띄우지 않도록 표시한다.
				canPopup=false;
			}
		}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/popup/main.jsp</title>
</head>
<body>
<h3>메인 페이지 입니다.</h3>
<p>자동으로 팝업이 뜨는 페이지</p>
<p>Gura 홈쇼핑</p>
<p>미리미리 봄을 준비해요!</p>
<%if(canPopup){ %>
	<script>
		window.open("sale.jsp","sale","width=400,height=400,top=100,left=100");
	</script>
<%} %>
</body>
</html>








