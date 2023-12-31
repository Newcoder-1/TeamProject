<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악 등록</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/regMusic.css">
<link rel="stylesheet" href="resources/css/common.css">
<script>
    function validateForm() {
        var title = document.getElementById('s_title').value;
        var artist = document.getElementById('s_artist').value;
        var date = document.getElementById('s_date').value;
        var albumFile = document.getElementById('s_album_file').value;
        var lyrics = document.getElementById('s_lyrics').value;

        if (title === "") {
            alert("제목을 입력해주세요.");
            return false;
        }

        if (artist === "") {
            alert("가수를 입력해주세요.");
            return false;
        }

        // 정규표현식을 사용하여 8자리 숫자인지 확인
        var datePattern = /^\d{8}$/;
        if (!date.match(datePattern)) {
            alert("발매일은 8자리 숫자로 입력해주세요.");
            return false;
        }

        if (albumFile === "") {
            alert("사진을 첨부해주세요.");
            return false;
        }

        if (lyrics === "") {
            alert("가사를 입력해주세요.");
            return false;
        }

        // 폼 제출을 허용
        return true;
    }
</script>
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
     <div id="contents">
    	<form action="regMusic.do" method="post" enctype="multipart/form-data" id="regMForm" onsubmit="return validateForm();">
		<h2>음악등록</h2>
			<div class="textForm">
       			<input name="s_title" type="text" id="s_title" placeholder="제목" autocomplete="off">
      		</div>
			<div class="textForm">
       			<input name="s_artist" type="text" id="s_artist" placeholder="가수" autocomplete="off">
      		</div>
			<div class="textForm">
       			<select name="s_genre" id="s_genre">
       				<option value="Ballad">Ballad</option>
       				<option value="HipHop">HipHop</option>
       				<option value="Dance">Dance</option>
       				<option value="Rock">Rock</option>
       				<option value="J-POP">J-POP</option>
       				<option value="OST">OST</option>
       			</select>
      		</div>
			<div class="textForm">
       			<input name="s_date_String" type="text" id="s_date" placeholder="발매일" autocomplete="off">
      		</div>
			<div class="textForm">
       			<input name="s_album_file" type="file" id="s_album_file" placeholder="사진" autocomplete="off">
      		</div>
			<div class="textForm">
       			<textarea name="s_lyrics" rows="20" id="s_lyrics" placeholder="가사를 입력해주세요!" autocomplete="off"></textarea>
      		</div>
      		<div class="textForm">
       			<input name="s_embed" type="text" id="s_embed" placeholder="영상 링크를 적어주세요!" autocomplete="off">
      		</div>
			<button id="btn">음악등록</button>
		</form>
    </div> 
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>