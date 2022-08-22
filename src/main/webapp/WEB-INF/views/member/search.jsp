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
	<section class="container-fluid col-lg-6 mt-5">
		<div class="row">
			<h1>Search Page</h1>
			<form class="row g-3" action="./search.iu" method="post">
			  <div class="col-6">
			    <label for="search" class="visually-hidden">Search</label>
			    <input type="text" name="search" class="form-control" id="search" placeholder="검색어 입력">
			  </div>
			  <div class="col-6">
			    <button type="submit" class="btn btn-dark mb-3">Search</button>
			  </div>
			</form>
		</div>
	</section>
	<!-- footer import -->
	<c:import url="../template/footer.jsp"></c:import>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>	
</body>
</html>