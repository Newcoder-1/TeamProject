<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
 <header>
		<div id="mainheader">
			<h1><a href="${contextPath }">AnyTime</a></h1>
			<div id="search">
				<form action="search.do" id="searchForm">
					<div>
						<input id="searchBox" name="word" type="text" placeholder="입력 후 Enter!" autocomplete="off">
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
					<li class="li-1"><a href="updateMember.go">정보수정</a></li>
					<li class="li-1"><a href="logOut.do">로그아웃</a></li>
				</ul>
			</nav>
			</c:if>
		</div>
	</header>
   	<div id="index">
       	<ul class="ul-2">
           	<li class="li-2"><a href="genre.do?s_genre=Ballad">Ballad</a></li>
           	<li class="li-2"><a href="genre.do?s_genre=HipHop">HipHop</a></li>
           	<li class="li-2"><a href="genre.do?s_genre=Dance">Dance</a></li>
           	<li class="li-2"><a href="genre.do?s_genre=Rock">Rock</a></li>
           	<li class="li-2"><a href="genre.do?s_genre=J-POP">J-POP</a></li>
           	<li class="li-2"><a href="genre.do?s_genre=OST">OST</a></li>
        </ul>
		<c:if test="${!empty mvo }">
			<div id="hello">${mvo.m_id }님 환영합니다</div>
			<div id="regS"><a href="regMusic.go">음악 등록</a></div>
		</c:if>
   	</div>
   	
<script type="text/javascript">
    document.getElementById('searchBox').addEventListener('keypress', function(event) {
        if (event.key === 'Enter') {
            var searchBox = document.getElementById('searchBox');
            var keyword = searchBox.value.trim();
            if (keyword === '') {
                alert('검색어를 입력해주세요.');
                event.preventDefault(); // 기본 동작(검색 수행)을 막음
            } else {
                document.getElementById('searchForm').submit(); // 검색어가 있을 때 검색 수행
            }
        }
    });
</script>
	
 	
   	
   	
   	
   	
   	
   	
   	