<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
	<header>
		<div id="main">
			<h1><a href="${contextPath }">AnyTime</a></h1>
			<div id="search">
				<form action="">
					<div>
						<input id="searchBox" type="text" placeholder="Search" autocomplete="off">
						<!--  
						<button>검색</button>
						-->
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
           	<li class="li-1"><a href="">Classic</a></li>
           	<li class="li-1"><a href="">Rock</a></li>
           	<li class="li-1"><a href="">R&B</a></li>
           	<li class="li-1"><a href="">Jazz</a></li>
           	<li class="li-1"><a href="">J-POP</a></li>
        </ul>
   	</div>