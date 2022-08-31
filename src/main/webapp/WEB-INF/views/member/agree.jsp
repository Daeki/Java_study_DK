<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>약관 동의 페이지</h1>
	<div>
		전체 동의 <input type="checkbox" name="" id="all">
		동의1(필수) <input type="checkbox" name="" id="" class="cb req">
		동의2(필수) <input type="checkbox" name="" id="" class="cb req">
		동의3(선택) <input type="checkbox" name="" id="" class="cb">
	</div>

	
	<form action="./join.iu" id="frm">
		<button type="button" id="join">회원가입</button>
	</form>
<script src="/resources/js/member.js"></script>
<script>
	check();
</script>
</body>
</html>