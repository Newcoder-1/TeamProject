<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="<%=request.getContextPath() %>" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
    <div id="contents">
    	<c:forEach var="d" items="${details}">
    		<img src="${path}/resources/album/${d.s_album}" width="100" height="100">
			제목 : ${d.s_title}		
			가수 : ${d.s_artist}
			발매일 : <fmt:formatDate value="${d.s_date}" pattern="YYYY-MM-dd"/>
			<br>
			${d.s_embed}
			가사 : ${d.s_lyrics}
		</c:forEach>
    </div>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>