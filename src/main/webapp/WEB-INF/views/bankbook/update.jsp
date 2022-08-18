<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Bankbook Update Page</h1>
	
	<form action="./update.iu" method="post">
		<input type="hidden" name="bookNum" readonly="readonly" value="${dto.bookNum}">
		<div>
			Name : <input type="text" name="bookName" value="${dto.bookName}">
		</div>
		<div>
			Rate : <input type="text" name="bookRate" value="${dto.bookRate}">
		</div>
		
		<input type="submit" value="수정">
		<button type="submit">수정</button>
	
	</form>

</body>
</html>