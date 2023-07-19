<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
	<header>
		<div id="main">
			<h1><a href="http://localhost/project/">AnyTime</a></h1>
			<div id="search">
				<form action="">
					<div>
						<input id="searchKeyword" type="text" placeholder="검색어를 입력하세요." autocomplete="off">
						<button>검색</button>
					</div>
				</form>
			</div>	
			<nav id="member">
				<ul>
					<li><a href="signIn.do">로그인</a></li>
					<li><a href="signUp.do">회원가입</a></li>
				</ul>
			</nav>
		</div>
	</header>
   	<div id="index">
       	<ul id="ul-1">
           	<li class="li-1"><a href="">Ballad</a></li>
           	<li class="li-1"><a href="">Classic</a></li>
           	<li class="li-1"><a href="">Rock</a></li>
           	<li class="li-1"><a href="">R&B</a></li>
           	<li class="li-1"><a href="">Jazz</a></li>
           	<li class="li-1"><a href="">J-POP</a></li>
        </ul>
   	</div>
    <div id="contents">
    	본문 내용
    </div>
    <footer>
        <div id="foot">하단의 내용</div>
    </footer>
</body>
</html>