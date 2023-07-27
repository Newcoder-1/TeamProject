<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/signUp.css">
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">

	
</script>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
    <div id="contents">
    	<form action="member.reg" method="post" id="joinForm">
		<h2>회원가입</h2>
			<div class="textForm">
       			<input name="m_id" type="text" id="m_id" placeholder="아이디" autocomplete="off">
      		</div>
      	
			<div class="textForm">
       			<input name="m_pw" type="text" id="m_pw" placeholder="비밀번호" autocomplete="off" onkeyup="passwordCheck()">
      		</div>
			<div class="textForm">
       			<input name="m_pw2" type="text" id="m_pw2" placeholder="비밀번호 확인" autocomplete="off" onkeyup="passwordCheck()">
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
      		<button id="btn" type="button" onclick="joinform_check();">회원가입</button>
      		 -->
			
			<button id="btn">회원가입</button>
		</form>
    </div> 

    
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>























