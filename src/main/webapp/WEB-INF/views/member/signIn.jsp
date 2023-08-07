<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/signIn.css">
<link rel="stylesheet" href="resources/css/common.css">
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
	<div id="contents-container">
	    <div id="contents">
	        <form action="logIn.do" method="post" id="LogInForm" onsubmit="return validateForm()">
	            <h2>로그인</h2>
	            <div class="textForm">
	                <input name="m_id" type="text" id="m_id" placeholder="아이디를 입력하세요" autocomplete="off">
	            </div>
	            <div class="textForm">
	                <input name="m_pw" type="password" id="m_pw" placeholder="비밀번호를 입력하세요" autocomplete="off">
	            </div>
	            <button id="btn" type="submit">로그인</button>
	        </form>
	    </div>
	</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
<script>
    function validateForm() {
        var m_id = document.getElementById("m_id").value;
        var m_pw = document.getElementById("m_pw").value;

        if (m_id.trim() === "") {
            alert("아이디를 입력해주세요.");
            return false;
        }

        if (m_pw.trim() === "") {
            alert("비밀번호를 입력해주세요.");
            return false;
        }

        // 서버로 폼 데이터를 제출하도록 true 반환
        return true;
    }
</script>
</body>
</html>