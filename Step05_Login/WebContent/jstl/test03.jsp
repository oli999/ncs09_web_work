<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jstl/test03.jsp</title>
</head>
<body>
<h3>forTokens  활용</h3>
<% 
	String hobby="piano/game/reading"; 
	request.setAttribute("hobby", hobby);
%>
<ul>
	<c:forTokens var="tmp" items="${hobby }" delims="/">
		<li>${tmp }</li>
	</c:forTokens>
</ul>
<%
	request.setAttribute("num", 998);
%>
<h3>choose 문을 이용해서 if~else 문 구조 만들기</h3>
<c:choose>
	<c:when test="${num%2 eq 0 }">
		<p>${num } 은 짝수 입니다.</p>
	</c:when>
	<c:otherwise>
		<p>${num } 은 홀수 입니다.</p>
	</c:otherwise>
</c:choose>

<%
	request.setAttribute("jumsu", 65);
%>
<h3>choose 문을 이용해서 다중 if 문 구성하기</h3>
<p> 
	획득한 점수는 <strong>${jumsu }</strong> 이고 
	성적은 
	<c:choose>
		<c:when test="${jumsu >= 90 }">
			<strong>A</strong>
		</c:when>
		<c:when test="${jumsu >= 80 }">
			<strong>B</strong>
		</c:when>
		<c:when test="${jumsu ge 70 }">
			<strong>C</strong>
		</c:when>
		<c:when test="${jumsu ge 60 }">
			<strong>D</strong>
		</c:when>
		<c:otherwise>
			<strong>F</strong>
		</c:otherwise>
	</c:choose>
	입니다.
</p>
</body>
</html>


















