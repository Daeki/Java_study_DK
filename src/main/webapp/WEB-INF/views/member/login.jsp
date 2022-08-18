<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login Page</h1>
	
	<div>
        <form action="./login.iu" method="post">
            <div class="container">
                <h2>ID 로그인</h2>
                <div>
                    <input type="text" value="id1" name="userName" placeholder="아이디">
                </div>
                <div>
                    <input type="password" value="id1" name="password" placeholder="비밀번호">
                </div>
               
                   <div class="login">
                       <input type="submit" value="로그인">
                  </div>
                </div>
        </form>
    </div>
	
</body>
</html>