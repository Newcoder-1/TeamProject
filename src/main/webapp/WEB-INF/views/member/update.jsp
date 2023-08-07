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
		<form action="updateMember.do" method="post" id="joinForm" onsubmit="return validateForm()">
		<h2>정보 수정</h2>
			<div class="textForm">
       			<input name="m_id" type="text" id="m_id" placeholder="아이디" autocomplete="off" value="${mvo.m_id}" readonly>
      		</div>
      		
      		<div class="textForm">
       		 	<input name="m_pw" type="password" id="m_pw" placeholder="비밀번호" autocomplete="off" onblur="validatePasswordMatch()">
    		</div>
    		<div class="textForm">
        		<input name="m_pw2" type="password" id="m_pw2" placeholder="비밀번호 확인" autocomplete="off" onblur="validatePasswordMatch()">
    		</div>
      		
<!-- 			<div class="textForm"> -->
<!--        			<input name="m_pw" type="password" id="m_pw" placeholder="비밀번호" autocomplete="off"> -->
<!--       		</div> -->
<!-- 			<div class="textForm"> -->
<!--        			<input name="m_pw2" type="password" id="m_pw2" placeholder="비밀번호 확인" autocomplete="off"> -->
<!--       		</div>  -->
			<div class="textForm">
       			<input name="m_name" type="text" id="m_name" placeholder="이름" autocomplete="off" >
      		</div>
			<div class="textForm">
       			<input name="m_phone" type="text" id="m_phone" placeholder="번호" autocomplete="off" >
      		</div>
			<div class="textForm">
       			<input name="m_email" type="text" id="m_email" placeholder="이메일" autocomplete="off" >
      		</div>
			<button id="btn">정보수정</button>
		</form>
    </div> 
<jsp:include page="../common/footer.jsp"></jsp:include>

<script>
    function validateForm() {
        var m_pw = document.getElementById("m_pw").value;
        var m_pw2 = document.getElementById("m_pw2").value;
        var m_name = document.getElementById("m_name").value;
        var m_phone = document.getElementById("m_phone").value;
        var m_email = document.getElementById("m_email").value;

        if (m_pw.trim() === "") {
            alert("비밀번호를 입력해주세요.");
            return false;
        }

        if (m_pw !== m_pw2) {
            alert("비밀번호가 일치하지 않습니다.");
            return false;
        }

        if (m_name.trim() === "" || m_phone.trim() === "" || m_email.trim() === "") {
            alert("이름, 번호, 이메일을 입력해주세요.");
            return false;
        }

        // 서버로 폼 데이터를 제출하도록 true 반환
        return true;
    }

    // 비밀번호 확인 필드가 사용자에 의해 수정되기 전까지 검사를 하지 않도록 설정
    var isPasswordCheck = false;

    // 비밀번호 필드와 비밀번호 확인 필드의 일치 여부 검사 함수
    function validatePasswordMatch() {
        var m_pw = document.getElementById("m_pw").value;
        var m_pw2 = document.getElementById("m_pw2").value;

        // 사용자가 비밀번호 확인 필드를 수정하기 전까지 검사하지 않음
        if (isPasswordCheck) {
            if (m_pw !== m_pw2) {
                alert("비밀번호가 일치하지 않습니다.");
            }
        }
    }

    // 비밀번호 확인 필드를 사용자가 수정했을 때 호출되는 함수
    function confirmPasswordCheck() {
        isPasswordCheck = true;
        validatePasswordMatch(); // 비밀번호 일치 검사 실행
    }
</script>
</body>
</html>