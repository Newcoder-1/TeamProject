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
				<ul class="ul-1">
					<li class="li-1"><a href="signIn.do">로그인</a></li>
					<li class="li-1"><a href="signUp.do">회원가입</a></li>
				</ul>
			</nav>
		</div>
	</header>
   	<div id="index">
       	<ul class="ul-1">
           	<li class="li-1"><a href="Ballad.do">Ballad</a></li>
           	<li class="li-1"><a href="Classic.do">Classic</a></li>
           	<li class="li-1"><a href="Rock.do">Rock</a></li>
           	<li class="li-1"><a href="R&B.do">R&B</a></li>
           	<li class="li-1"><a href="Jazz.do">Jazz</a></li>
           	<li class="li-1"><a href="J-POP.do">J-POP</a></li>
        </ul>
   	</div>
    <div id="contents">
    	
    	클래식
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    </div>
    <footer>
    	<nav>
            <a href="http://localhost/project/">AnyTime</a> |
            <a href="https://github.com/Newcoder-1/TeamProject" >Github</a>
        </nav>
        <p>
            <span>4팀 : EveryTime</span><br/>
            <span>팀원 : 박종훈. 김상휘. 한건희</span><br/>
            <span>Copyright 2023. AnyTime. All Rights Reserved.</span>
        </p>
    </footer>
</body>
</html>