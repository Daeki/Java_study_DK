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
		<div class="row mt-5 bg-light">
			<h1>${board} Detail Page</h1>
		</div>	
		<div class="row border border-danger mt-5 bg-light" style="height: 75px">
			<div class="col-lg-6 border border-danger">
				${boardDTO.title}
			</div>
			<div class="col-lg-2 border border-danger">
				${boardDTO.writer}
			</div>
			<div class="col-lg-2 border border-danger">
				${boardDTO.regDate}
			</div>
			<div class="col-lg-2 border border-danger">
					${boardDTO.hit}
			</div>
		</div>
		<div class="row border border-top-0 border-danger bg-light"  style="min-height: 60vh" >
			<div class="col">
				${boardDTO.contents}
			</div>
		</div>
		${boardDTO.boardFileDTOs}
		<div class="row border border-top-0 border-danger bg-light"  style="min-height: 60vh" >
			<div class="col">
				<c:forEach items="${boardDTO.boardFileDTOs}" var="fileDTO">
					<p>
					<a href="../resources/upload/${board}/${fileDTO.fileName}">${fileDTO.oriName}</a>
					</p>
				</c:forEach>
				
			</div>
		</div>
		
		<div class="row">
			<a href="./reply.iu?num=${boardDTO.num}" class="btn btn-danger">Reply</a>
		</div>
		
		
	</section>
<c:import url="../template/footer.jsp"></c:import>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>	
</body>
</html>


