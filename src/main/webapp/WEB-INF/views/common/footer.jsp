<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<footer>
	<nav>
        <a id="ft" href="${contextPath }">AnyTime</a> |
        <a href="https://github.com/Newcoder-1/TeamProject" >Github</a>
    </nav>
    <p>
        <span>4팀 : EveryTime</span><br/>
        <span>팀원 : 박종훈. 김상휘. 한건희</span><br/>
        <span>Copyright 2023. AnyTime. All Rights Reserved.</span>
    </p>
</footer>