<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="<%=request.getContextPath() %>" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 페이지</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/detail.css">
<link rel="stylesheet" href="resources/css/common.css">
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
	<div id="contents-container">
		<div id="contents">
		    <c:forEach var="d" items="${details}">
			    <div id="details">
				    <div id="titleDetails">
				        <div id="d1">
				        	<img src="${path}/resources/album/${d.s_album}" width="200" height="200">
				        </div>
			
				        <div id="d1-info">
					        <div id="d2">
					              ${d.s_title}
					        </div>
					
					        <div id="d3">
					             ${d.s_artist}
					        </div>
					
					        <div id="d4">
					             <fmt:formatDate value="${d.s_date}" pattern="YYYY-MM-dd"/>
					        </div>
				        </div>
			        </div>
			
			        <div id="d5">
			        	${d.s_embed}
			        </div>
			
			        <div id="d6">
			         	${d.s_lyrics}
			        </div>
		      	</div>
	        </c:forEach>
	    </div>
</div>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>