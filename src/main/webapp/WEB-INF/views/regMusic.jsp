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
    	<form action="regMusic.do" method="post" enctype="multipart/form-data" id="">
		<h2>음악등록</h2>
			<div class="textForm">
       			곡명<input name="s_title" type="text" id="s_title" placeholder="제목" autocomplete="off">
      		</div>
			<div class="textForm">
       			가수<input name="s_artist" type="text" id="s_artist" placeholder="가수" autocomplete="off">
      		</div>
			<div class="textForm">
				장르
       			<select name="s_genre" id="s_genre">
       				<option value="J-POP">J-POP</option>
       				<option value="Ballad">Ballad</option>
       				<option value="HipHop">HipHop</option>
       				<option value="Dance">Dance</option>
       				<option value="Rock">Rock</option>
       				<option value="OST">OST</option>
       			</select>
      		</div>
			<div class="textForm">
       			발매일<input name="s_date_String" type="text" id="s_date" placeholder="숫자만입력해주세요" autocomplete="off">
      		</div>
			<div class="textForm">
       			앨범<input name="s_album_file" type="file" id="s_album_file" autocomplete="off">
      		</div>
			<div class="textForm">
       			가사
       			<textarea name="s_lyrics" rows="20" id="s_lyrics" placeholder="가사" autocomplete="off">
       			</textarea>
      		</div>
			<button id="btn">음악등록</button>
		</form>
    </div> 
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>