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
<jsp:include page="common/header.jsp"></jsp:include>
    <div id="contents">
		<c:forEach var="m" items="${musics}">
			제목: ${m.s_title}		
			가수: ${m.s_artist}		
		</c:forEach>
    	
    </div>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>