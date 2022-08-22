<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
    .align-center {text-align: center;}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<br><br>
<h1 class="align-center">Update Page</h1>
<br><br>
<form action="update.iu" method="POST">
	<section class="container-fluid col-lg-4">
	<div class="row">
	<table class="table table-bordered border-primary">
	  <thead>
	  <tr>
		<td colspan="2"><input type="hidden" name="bookNum" value="${dto.bookNum}"></td>
		</tr>
	    <tr>
	      <th scope="col">상품명</th>
	      <th scope="col">이자율</th>
	    </tr>
	  </thead>
	  <tbody>
			<tr>
				<td><input type="text" name="bookName" value="${dto.bookName}"></td>
				<td><input type="text" name="bookRate" value="${dto.bookRate}"></td>
			</tr>
	   </tbody>
</table>
	<br>	<br>
<button type="submit" class="btn btn-primary" class="align-center">상품 수정</button>

</div>
</section>

</form>

<c:import url="../template/footer.jsp"></c:import>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>