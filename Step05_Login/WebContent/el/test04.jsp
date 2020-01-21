<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/el/test04.jsp</title>
</head>
<body>
<h3>산술연산</h3>
<p>1+1 = ${1+1 }</p>
<p>10-1=<strong>${10-9 }</strong></p>
<p>10*10=<strong>${10*10 }</strong></p>
<p>10/3=<strong>${10/3 }</strong></p>

<h4>비교연산</h4>
<p> 10 은 2 보다 커요 : <strong>${10 > 2 }</strong></p>
<p> 10 은 2 보다 커요 : <strong>${10 gt 2 }</strong></p>
<p> 10 은 2 와 같거나 커요 : <strong>${10 >= 2}</strong></p>
<p> 10 은 2 와 같거나 커요 : <strong>${10 ge 2}</strong></p>
<p> 10 은 2 보다 작아요 : <strong>${10 < 2 }</strong></p>
<p> 10 은 2 보다 작아요 : <strong>${10 lt 2 }</strong></p>
<p> 10 은 2 와 같거나 작아요 : <strong>${10 <= 2 }</strong></p>
<p> 10 은 2 와 같거나 작아요 : <strong>${10 le 2 }</strong></p>
<p> 10 은 10 과 같아요 : <strong>${10 == 10 }</strong></p>
<p> 10 은 10 과 같아요 : <strong>${10 eq 10 }</strong></p>
<p> 10 은 10 과 달라요 : <strong>${10 != 10 }</strong></p>
<p> 10 은 10 과 달라요 : <strong>${10 ne 10 }</strong></p>

<h4>논리연산</h4>
<p> true || false : ${true || false}</p>
<p> true or false : ${true or false }</p>
<p> true && false : ${true && false }</p>
<p> true and false : ${true and false }</p>
<p> !true : ${!true }</p>
<p> not true : ${not true }</p>

<h4>empty 연산자 (비어 있는지 여부)</h4>
<p> empty null : <strong>${empty null }</strong></p>
<p> empty "" : <strong>${empty "" }</strong></p>
<p> not empty null : <strong>${not empty null }</strong></p>
<p> not empty "" : <strong>${not empty "" }</strong></p>

</body>
</html>






