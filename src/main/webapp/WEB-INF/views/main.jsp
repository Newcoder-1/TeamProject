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
<link rel="stylesheet" href="resources/css/test.css">
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
    <div id="contents">
    	최근 등록된 음악<br>
		<c:forEach var="m" items="${musics}">
			제목 : ${m.s_title}		
			가수 : ${m.s_artist}
			발매일 : <fmt:formatDate value="${m.s_date}" pattern="YYYY-MM-dd"/>
			<br>
		</c:forEach>
    </div>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>