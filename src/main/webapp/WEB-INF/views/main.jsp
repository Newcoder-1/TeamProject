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
<style>
    /* 이미지 스타일 */
    img {
        border: 1px solid #ccc; /* 테두리 스타일 */
        margin: 10px; /* 여백 */
    }

    /* 테이블 셀 스타일 */
    table {
        border-collapse: collapse; /* 테이블 셀 경계가 서로 겹치도록 설정 */
        width: 80%; /* 테이블 폭을 100%로 설정 */
    }

    th, td {
        padding: 10px; /* 셀 내부 여백 */
        text-align: center; /* 셀 내용 가운데 정렬 */
    }

    th {
        background-color: #f2f2f2; /* 테이블 헤더 배경색 */
    }

    td {
        background-color: #fff; /* 테이블 셀 배경색 */
        color: #333; /* 글자색 */
    }
</style>


</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
    <div id="contents">
    	<table id="stable" border="0">
    		<colgroup>
    			<col width="50px">
    			<col width="250px">
    			<col width="250px">
    			<col width="250px">
    		</colgroup>
    		
    		<thead>
    			<tr id="thtr" border>
    				<th class="th1">앨범</th>
    				<th class="th1">곡</th>
    				<th class="th1">아티스트</th>
    				<th class="th1">발매일</th>
    				<th class="th1">더보기</th>
    			</tr>
    		</thead>
    		
    		<c:forEach var="m" items="${musics}">
    		<tbody>
    				<tr id="tbtr" align="center">
    					<td><img src="${path}/resources/album/${m.s_album}" width="100" height="100"></td>
    					<td class="th2">${m.s_title}</td>
    					<td class="th2">${m.s_artist}</td>
    					<td class="th2"><fmt:formatDate value="${m.s_date}" pattern="YYYY-MM-dd"/></td>
    					<td class="th2"><a href="detailMusic.go?s_no=${m.s_no}">상세 보기</a></td>
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