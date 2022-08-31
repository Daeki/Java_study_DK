<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
   <header>
        <nav class="navbar  navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                    <a class="nav-link active" href="/bankbook/list.iu">상품리스트</a>
                    <a class="nav-link active" href="/notice/list.iu">공지사항</a>
                    <a class="nav-link active" href="/qna/list.iu">QnA</a>
                    <a class="nav-link active" href="/member/search.iu">회원검색</a>
                    <c:choose>
                    	<c:when test="${not empty member}">
		                    <a class="nav-link active" href="/member/myPage.iu">마이페이지</a>
		                    <a class="nav-link active" href="/member/logout.iu">로그아웃</a>
                    	</c:when>
                    	<c:otherwise>
	                    	<a class="nav-link active" href="/member/login.iu">로그인</a>
	                    	<a class="nav-link active" href="/member/agree.iu">회원가입</a>
                   		</c:otherwise>
                    </c:choose>
                </div>
                </div>
            </div>
        </nav>
    </header>