<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/popup/nopopup.jsp</title>
</head>
<body>
<%
	// "isPopup" 이라는 파라미터명으로 넘어 오는 값이 있는지 읽어와 본다.
	String isPopup=request.getParameter("isPopup");
	if(isPopup != null){// null 이 아니면 체크박스를 체크한 것이므로 
		//팝업을 일정시간 띄우지 않도록 쿠키를 응답한다.
		Cookie cook=new Cookie("isPopup", isPopup);
		cook.setMaxAge(60);
		response.addCookie(cook);
	}
%>
<script>
	//팝업된창 닫기 
	self.close();
</script>
</body>



</html>












