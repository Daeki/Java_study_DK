<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Join page</h1>
    <div class="container">
        <form action="join.iu" method="post" >
            <h4>아이디</h4>
            <input type="text" name="userName">
            <h4>비밀번호</h4>
            <input type="password" name="password">
            <h4>이름</h4>
            <input type="text" name="name">
            <h4>본인 확인 이메일 <span>(선택)</span></h4>
            <input type="email" name="email">
            <h4>휴대전화</h4>
            <div>
                <input type="number" name="phone" placeholder="전화번호 입력">
            </div>
            <div>
                <input type = "submit" value="가입하기">
            </div>
        </form>
    </div>
</body>
</html>