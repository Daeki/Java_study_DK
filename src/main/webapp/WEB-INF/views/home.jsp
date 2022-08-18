<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<h3>Add VSCODE</h3>
<h3>Add Spring</h3>

<P>  The time on the server is ${serverTime}. </P>

<c:if test="${empty sessionScope.member}">
<a href="./member/login.iu">Login</a>
<a href="./member/join.iu">Join</a>
</c:if>

<c:if test="${not empty sessionScope.member}">
<h3>${sessionScope.member.name} 님 환영합니다</h3>
<a href="./member/logout.iu">Logout</a>
<a href="#">MyPage</a>
</c:if>
<a href="./bankbook/list.iu">상품리스트</a>

</body>
</html>
