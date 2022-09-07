<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Page</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
    .align-center {text-align: center;}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<h1 class="align-center">Detail Page</h1>

<section class="container-fluid col-lg-6">
	<div class="row">
		<table class="table table-dark">
			<thead>
				<tr>	
				<th scope="col">상품번호</th>
				<th scope="col">상품명</th>
				<th scope="col">이자율</th>
				<th scope="col">판매여부</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>${dto.bookNum}</td>
						<td>${dto.bookName}</td>	
						<td>${dto.bookRate}</td>	
						<td>${dto.bookSale}</td>			
					</tr>
			</tbody>
		</table>
		
		<div class="align-center">
			<a href = "./list.iu" class="btn btn-info">상품 목록 보기</a>
			<a href= "./update.iu?bookNum=${dto.bookNum}" class="btn btn-primary">상품 수정</a>
			<a href="./delete.iu?bookNum=${dto.bookNum}" class="btn btn-danger">상품 삭제</a>
			<c:if test="${not empty sessionScope.member}">
			<a href="../bankAccount/add.iu?bookNum=${dto.bookNum}" class="btn btn-success">상품 가입</a>
			</c:if>
		</div>

	</div>

	<!------ Comment  ---------->
	<div class="row">
		<div class="mb-3">
			<label for="writer" class="form-label">USERNAME</label>
			<input type="text" class="form-control" id="writer" placeholder="Enter Your USERNAME">
		</div>
		<div class="mb-3">
			<label for="contents" class="form-label">WRITE CONTENTS</label>
			<textarea class="form-control" id="contents" rows="3"></textarea>
		</div>
		<div class="mb-3">
			<button type="button" id="commentAdd" data-book-num="${dto.bookNum}">댓글작성</button>
		</div>
	</div>

	<!-- Comment List 출력-->
	<div>
		<table id="commentList" class="table table-hover">

		</table>
	</div>
	<button id="more" class="btn btn-danger disabled">더보기</button>
	<!------ Comment ---------->
</section>
<c:import url="../template/footer.jsp"></c:import>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/bankbookComment.js"></script>
</body>
</html>