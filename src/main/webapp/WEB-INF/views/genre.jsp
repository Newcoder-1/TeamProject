<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="<%=request.getContextPath() %>" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장르</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/searchMain.css">
<link rel="stylesheet" href="resources/css/common.css">
<script type="text/javascript" src="resources/jQuery.js"></script>
<style>
   /* 이미지 스타일 */
    img {
        margin: 10px; /* 여백 */
    }

    /* 테이블 셀 스타일 */
    #contents table {
        border-collapse: collapse; /* 테이블 셀 경계가 서로 겹치도록 설정 */
        width: 80%; /* 테이블 폭을 100%로 설정 */
    }

    #stable th, td {
        padding: 10px; /* 셀 내부 여백 */
        text-align: center; /* 셀 내용 가운데 정렬 */
    }

    #stable th {
        background-color: #f2f2f2; /* 테이블 헤더 배경색 */
    }

    #stable td {
        background-color: #fff; /* 테이블 셀 배경색 */
        color: #333; /* 글자색 */
    }
</style>
<script type="text/javascript">
	$(function() {
		let s_genre = getParameterByName("s_genre");
		$.getJSON("genre.doJSON?s_genre=" + s_genre,  function(abc2) {
			let page = parseInt(getParameterByName("page")) || 1;
			$.each(abc2.music, function(i, e) {
				if ((10 * page - 10) <= i
						&& i <= (10 * page - 1)) {
					
					let imageUrl = "${path}/resources/album/" + e.s_album;
                    let img = $("<img>").attr("src", imageUrl).attr("width", "100").attr("height", "100");

                    let td1 = $("<td></td>").append(img);
                    let td2 = $("<td></td>").text(e.s_title);
                    let td3 = $("<td></td>").text(e.s_artist);
                    let td4 = $("<td></td>").text(formatDate(e.s_date)); // 날짜 형식 변환
                    let td5 = $("<td></td>").append($("<a>").attr("href", "detailMusic.go?s_no=" + e.s_no).text("상세 보기"));

                    let tr = $("<tr></tr>").append(td1, td2, td3, td4, td5);
                
				$("#stable").append(tr);
				}
			});
		});
	});

	function getParameterByName(name) { // 파라미터 함수정의
		let url = window.location.href;
		name = name.replace(/[\[\]]/g, '\\$&');
		let regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)');
		let results = regex.exec(url);
		if (!results)
			return null;
		if (!results[2])
			return '';
		return decodeURIComponent(results[2].replace(/\+/g, ' '));
	}
	
	function formatDate(dateStr) {
        // 날짜 형식 변환 함수
        let date = new Date(dateStr);
        let year = date.getFullYear();
        let month = String(date.getMonth() + 1).padStart(2, '0');
        let day = String(date.getDate()).padStart(2, '0');
        return year + '-' + month + '-' + day;
    }
</script>
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
				<col width="100px">
			</colgroup>
			
			<thead>
				<tr id="thtr">
					<th class="th1">앨범</th>
					<th class="th1">곡</th>
					<th class="th1">아티스트</th>
					<th class="th1">발매일</th>
					<th class="th1">더보기</th>
				</tr>
			</thead>
		</table>
	</div>
    	
	    <div id="pageDiv">
			<table id="paging" class="searchpaging" border="0">
				<tr>
					<c:forEach var="i" begin="1" end="${pageNum }" step="1">
						<td><a href="genre.do?s_genre=${genre }&page=${i }">${i }</a></td>
					</c:forEach>
				</tr>
			</table>
		</div>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>