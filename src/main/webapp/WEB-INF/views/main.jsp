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
<link rel="stylesheet" href="resources/css/searchMain.css">
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
    <div id="contents">
    	<table id="stable" border="1">
    		<colgroup>
    			<col width="50px">
    			<col width="250px">
    			<col width="250px">
    			<col width="250px">
    		</colgroup>
    		
    		<thead>
    			<tr id="thtr">
    				<th class="th1">앨범</th>
    				<th class="th1">곡</th>
    				<th class="th1">아티스트</th>
    				<th class="th1">발매일</th>
    			</tr>
    		</thead>
    		
    		<c:forEach var="m" items="${musics}">
    		<tbody>
    			<tr id="tbtr" align="center">
    				<td><img src="${path}/resources/album/${m.s_album}" width="100" height="100"></td>
    				<td class="th2">${m.s_title}</td>
    				<td class="th2">${m.s_artist}</td>
    				<td class="th2"><fmt:formatDate value="${m.s_date}" pattern="YYYY-MM-dd"/></td>
    			</tr>
    		</tbody>
    		</c:forEach>    	
    	</table>
    </div>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
		<!-- 
		<c:forEach var="m" items="${musics}">
			<img src="${path}/resources/album/${m.s_album}" width="100" height="100">
			제목 : ${m.s_title}		
			가수 : ${m.s_artist}
			발매일 : <fmt:formatDate value="${m.s_date}" pattern="YYYY-MM-dd"/>
		</c:forEach>
		 -->