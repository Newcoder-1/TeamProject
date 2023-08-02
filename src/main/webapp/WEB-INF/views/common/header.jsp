<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
	<header>
		<div id="main">
			<h1><a href="${contextPath }">AnyTime</a></h1>
			<div id="search">
				<form action="search.do">
					<div>
						<input id="searchBox" name="word" type="text" placeholder="Search" autocomplete="off">
						<!--  
						<button>검색</button>
						-->
					</div>
				</form>
			</div>
			
			<c:if test="${empty mvo }">
			<nav id="member">
				<ul class="ul-1">
					<li class="li-1"><a href="signIn.do">로그인</a></li>
					<li class="li-1"><a href="signUp.do">회원가입</a></li>
				</ul>
			</nav>
			</c:if>	 
			<c:if test="${!empty mvo }">
			<nav id="member">
				<ul class="ul-1">
					<li class="li-1">${mvo.m_id }님 환영합니다!</li>
					<li class="li-1"><a href="">정보수정</a></li>
					<li class="li-1"><a href="logOut.do">로그아웃</a></li>
				</ul>
			</nav>
			</c:if>	 
			
		</div>
	</header>
   	<div id="index">
       	<ul class="ul-1">
           	<li class="li-1"><a href="genre.do?s_genre=Ballad">Ballad</a></li>
           	<li class="li-1"><a href="genre.do?s_genre=HipHop">HipHop</a></li>
           	<li class="li-1"><a href="genre.do?s_genre=Dance">Dance</a></li>
           	<li class="li-1"><a href="genre.do?s_genre=Rock">Rock</a></li>
           	<li class="li-1"><a href="genre.do?s_genre=J-POP">J-POP</a></li>
           	<li class="li-1"><a href="genre.do?s_genre=OST">OST</a></li>
        </ul>
   	</div>
   	<c:if test="${!empty mvo }">
   		<div id="regS"><a href="regMusic.go">음악등록</a></div>
   	</c:if>
   	
   	
   	
   	
   	
   	
   	
   	