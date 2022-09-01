<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
 <!-- jquery  -->
 <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
 <!-- bootStrap -->	
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
 
 <!-- include summernote css/js-->
 <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
 
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<h1 class="align-center">${board } Add Page</h1>
<section class="container-fluid col-lg-4">
	
	<div class="row">
		<form action="./add.iu" method="post" enctype="multipart/form-data">
			<div class="mb-3">
			  <label for="title" class="form-label">Title</label>
			  <input type="text" name="title" class="form-control" id="title" placeholder="제목 입력">
			</div>
			<div class="mb-3">
			  <label for="writer" class="form-label">Writer</label>
			  <input type="text" name="writer" class="form-control" id="Writer" placeholder="작성자 입력">
			</div>
			<div class="mb-3">
			  <label for="contents" class="form-label">Contents</label>
			  <textarea class="form-control" name="contents" id="contents" rows="3"></textarea>
			</div>

			<div id="addFiles">
				<button type="button" class="btn btn-danger" id="fileAdd">파일 추가</button>

			</div>

			
			<div class="mb-3">
				<button class="btn btn-success">WRITE</button>
			</div>
			
		</form>
	</div>
</section>
<c:import url="../template/footer.jsp"></c:import>
<!-- bootStrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/board_files.js"></script>
<script type="text/javascript">
	$("#contents1").summernote();
</script>
</body>
</html>