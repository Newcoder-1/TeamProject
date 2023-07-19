<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="resources/css/signIn.css">
</head>
<body>
	<form action="" method="post" id="LogInForm">
		<h2>로그인</h2>
			<div class="textForm">
       			<input name="m_id" type="text" id="m_id" placeholder="아이디를 입력하세요" autocomplete="off">
      		</div>
			<div class="textForm">
       			<input name="m_pw" type="text" id="m_pw" placeholder="비밀번호를 입력하세요" autocomplete="off">
      		</div>
      		<button id="btn">로그인</button>
      </form>
</body>
</html>