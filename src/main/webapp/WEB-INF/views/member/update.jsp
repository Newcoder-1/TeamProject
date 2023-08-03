<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/update.css">
<link rel="stylesheet" href="resources/css/common.css">
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
    <div id="contents">
    	<form action="updateMember.do" method="post" id="joinForm">
		<h2>정보 수정</h2>
			<div class="textForm">
       			<input name="m_id" type="text" id="m_id" placeholder="아이디" autocomplete="off" value="${mvo.m_id}" readonly>
      		</div>
			<div class="textForm">
       			<input name="m_pw" type="text" id="m_pw" placeholder="비밀번호" autocomplete="off" onkeyup="passwordCheck()">
      		</div>
			<div class="textForm">
       			<input name="m_pw2" type="text" id="m_pw2" placeholder="비밀번호 확인" autocomplete="off" onkeyup="passwordCheck()">
      		</div> 
			<div class="textForm">
       			<input name="m_name" type="text" id="m_name" placeholder="이름" autocomplete="off" value="${mvo.m_name}">
      		</div>
			<div class="textForm">
       			<input name="m_phone" type="text" id="m_phone" placeholder="번호" autocomplete="off" value="${mvo.m_phone}">
      		</div>
			<div class="textForm">
       			<input name="m_email" type="text" id="m_email" placeholder="이메일" autocomplete="off" value="${mvo.m_email}">
      		</div>
			<button id="btn">정보수정</button>
		</form>
    </div> 
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>