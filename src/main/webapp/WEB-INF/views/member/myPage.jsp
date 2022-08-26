<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
 <!-- header import -->
 <c:import url="../template/header.jsp"></c:import>
	<section class="container-fluid col-lg-6">
			<h1>MyPage</h1>
		<div class="row mt-5">
			<table class="table table-dark">
				<thead>
					<tr>
						<th>ID</th><th>NAME</th><th>EMAIL</th><th>PHONE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${requestScope.dto.userName}</td>
						<td>${dto.name}</td>
						<td>${dto.email}</td>
						<td>${dto.phone}</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="row mt-5">			
			<table class="table table-hover">
				<thead>
					<tr>
						<th>AccountNum</th><th>Title</th><th>Date</th>
					</tr>
				</thead>
				<tbody>
					
			<c:forEach items="${dto.bankAccountDTOs}" var="dto">
				<tr>
					<td>${pageScope.dto.accountNum}</td>
					<td>${dto.bankBookDTO.bookName}</td>
					<td>${dto.accountDate}</td>
				</tr>
			</c:forEach>
				</tbody>			
			
			</table>
			
		<%-- 	<h1>${map}</h1>
			<p>ID : ${map.dtp.userName}</p>
			<p>NAME : ${map.dtp.name}</p>
			<p>EMAIL : ${map.dtp.email}</p>
			<p>PHONE : ${map.dtp.phone}</p>
			
			<c:forEach items="${map.list}" var="dto">
				<p>${dto.accountNum}</p>
				<p>${dto.bankBookDTO.bookName}</p>
				<p>${dto.accountDate}</p>
			
			</c:forEach> --%>
		</div>	
		
		<div class="row">
			<img alt="" src="../resources/upload/member/${dto.bankMembersFileDTO.fileName}">
		</div>
		
	</section>
<c:import url="../template/footer.jsp"></c:import>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>	
</body>
</html>


