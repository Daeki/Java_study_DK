<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Page</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<section class="container-fluid col-lg-6">
	<h1 class="align-center">${board} List Page</h1>
	<div class="row">
	<table class="table">
	  <thead class="table-dark">
	    <tr>
	      <th scope="col">NUM</th>
	      <th scope="col">TITLE</th>
	      <th scope="col">WRITER</th>
	      <th scope="col">DATE</th>
	      <th scope="col">HIT</th>
	    </tr>
	  </thead>
	  <tbody>
	    <c:forEach items="${list}" var="dto" >
			<tr>
				<td>${dto.num}</td>
				<td><a href="./detail.iu?num=${dto.num}">${dto.title}</a></td>
				<td>${dto.writer}</td>
				<td>${dto.regDate}</td>
				<td>${dto.hit}</td>	
			</tr>
		</c:forEach>
	  </tbody>
</table>
	<div class="mb-3">
		<a href="./add.iu" class="btn btn-primary">글쓰기</a>
	</div>
	
	<nav aria-label="Page navigation example">
	  <ul class="pagination">
	    <li class="page-item">
	      <a class="page-link" href="#" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
		
		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
			<li class="page-item"><a class="page-link" href="./list.iu?page=${i}">${i}</a></li>
		</c:forEach>



	    <li class="page-item">
	      <a class="page-link" href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	  </ul>
	</nav>
	
</div>
</section>
<c:import url="../template/footer.jsp"></c:import>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>