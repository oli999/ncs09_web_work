<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/popup/sale.jsp</title>
<style>
	body{
		background-color: yellow;
	}
</style>
</head>
<body>
<h3>봄맞이 파격 SALE</h3>
<p> 아디다스 슬리퍼  <del>30,000원</del> 10,000원</p>
<p> 나이키 수영복 <del>50,000원</del> 20,000원</p>
<form action="nopopup.jsp" method="post">
	<label>
		<input type="checkbox" name="isPopup" value="no" />
		1 분동안 팝업 띄우지 않기
	</label>
	<button type="submit">닫기</button>
</form>
</body>
</html>






