<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<table class="table table-dark table-hover">
	<c:forEach items="${commentList}" var="dto">
		<tr>
			<td>${dto.contents}</td>
			<td>${dto.writer}</td>
			<td>${dto.regDate}</td>
		</tr>
	</c:forEach>
</table>