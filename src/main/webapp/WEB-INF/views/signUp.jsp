<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/signUp.css">
</head>
<body>
	<form action="member.reg" method="post" id="joinForm">
		<h2>회원가입</h2>
			<div class="textForm">
       			<input name="m_id" type="text" id="m_id" placeholder="아이디" autocomplete="off">
      		</div>
			<div class="textForm">
       			<input name="m_pw" type="text" id="m_pw" placeholder="비밀번호" autocomplete="off">
      		</div>
			<div class="textForm">
       			<input name="m_pw2" type="text" id="m_pw2" placeholder="비밀번호 확인" autocomplete="off">
      		</div>
			<div class="textForm">
       			<input name="m_name" type="text" id="m_name" placeholder="이름" autocomplete="off">
      		</div>
			<div class="textForm">
       			<input name="m_birth" type="text" id="m_birth" placeholder="생일" autocomplete="off">
      		</div>
			<div class="textForm">
       			<input name="m_phone" type="text" id="m_phone" placeholder="번호" autocomplete="off">
      		</div>
			<div class="textForm">
       			<input name="m_email" type="text" id="m_email" placeholder="이메일" autocomplete="off">
      		</div>
			<div class="textForm">
       			<input name="m_gender" type="text" id="m_gender" placeholder="성별" autocomplete="off">
      		</div>
				<!-- 
			<table id="sut" border="1">
				<tr>
					<td id="m_id">아이디<input name="m_id" autocomplete="off"></td>
				</tr>
				<tr>
					<td id="m_pw">비밀번호<input name="m_pw" autocomplete="off"></td>
				</tr>
				<tr>
					<td id="m_name">이름<input name="m_name" autocomplete="off"></td>
				</tr>
				<tr>
					<td id="m_birth">생일<input name="m_birth" autocomplete="off"></td>
				</tr>
				<tr>
					<td id="m_phone">휴대폰 번호<input name="m_phone" autocomplete="off"></td>
				</tr>
				<tr>
					<td id="m_email">이메일<input name="m_email" autocomplete="off"></td>
				</tr>
				<tr>
					<td id="m_gender">성별<input name="m_gender" autocomplete="off"></td>
				</tr>
			</table>
				 -->
			<button id="btn">등록</button>
		</form>
</body>
</html>