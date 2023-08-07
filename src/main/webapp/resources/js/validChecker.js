// 계정 생성 유효성 검사
function validCheck() {
	var joinForm = document.joinForm;
	var m_id = document.getElementById("m_id");
	var m_pw = document.getElementById("m_pw");
	var m_pw2 = document.getElementById("m_pw2");
	var m_name = document.getElementById("m_name");
	var m_birth = document.getElementById("m_birth");
	var m_phone = document.getElementById("m_phone");
	var m_email = document.getElementById("m_email");
	var m_gender = document.getElementById("m_gender");
	
	var form = document.userInfo;
	
	// 정규식 이용
	// id 영어, 숫자 조합 / 4자 ~ 24자
	var regId = /^[a-zA-Z0-9]{4,24}$/;

	// pw 영어, 숫자 조합 / 4자 ~ 32자
	var regPw = /^[a-zA-Z0-9]{4,32}$/;

	// 이름 한글, 영어 조합 / 2자 ~ 15자 
	var regName = /^[가-힣a-zA-Z]{2,15}$/;

	// 생년월일 // 숫자로만 8자리 입력
	var regBirth = /^[0-9]{8,8}$/;
	
	// 휴대폰 번호 // 9 ~ 11자리 전화번호
	var regPhone = /^[0-9]{9,11}$/;
	
	// 이메일 형식
	var regEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	

	///////
	// 아이디
	// 아이디 빈칸 체크
	if (m_id.value == "") {
		alert("아이디를 입력해주세요.");
		m_id.focus();
		return false;
	}
	
	// 아이디 영문 대소문자, 숫자 구분
	else if (!regId.test(m_id.value)) {
		alert("아이디 4~24자, 영문 대소문자, 숫자만 입력해주세요.");
		m_id.focus();
		return false;
	}
	
	
	///////
	// 중복검사
//	if (form.idDuplication.value != "idCheck") {
//		alert("아이디 중복검사를 진행해주세요.");
//		return false;
//	}
	
	
	///////
	// 비밀번호
	// 비밀번호 빈칸 확인
	if (m_pw.value == "") {
		alert("비밀번호를 입력해주세요.");
		m_pw.focus();
		return false;
	}
	
	// 비밀번호 체크
	else if (!regPw.test(m_pw.value)) {
		alert("비밀번호 4~32자, 영문 대소문자, 숫자에 맞게 입력해주세요.");
		m_pw.focus();
		return false;
	}

	// 비밀번호2 빈칸 확인
	else if (m_pw2.value == "") {
		alert("비밀번호 확인란을 입력해주세요.");
		m_pw.focus();
		return false;
	}
	
	// 비밀번호, 비밀번호 확인 비교
	else if (m_pw.value != m_pw2.value) {
		alert("비밀번호를 다시 확인해주세요.");
		m_pw2.focus();
		return false;
	}
	
	
	
	/////////
	// 이름
	// 이름 빈칸 확인
	if (m_name.value == "") {
		alert("이름을 입력해주세요.");
		m_name.focus();
		return false;
	}
	
	// 이름 최소 2자 이상(성 + 외자)
	else if (!regName.test(m_name.value)) {
		alert("이름을 2글자 이상, 한글과 영어만 입력해주세요.");
		m_name.focus();
		return false;
	}
	
	
	
	/////////
	// 생년월일
	// 생년월일 빈칸 확인
	if (m_birth.value == "") {
		alert("생년월일을 입력해주세요.");
		m_birth.focus();
		return false;
	}
	
	// 생년월일 숫자만 8자리 입력 받기
	else if (!regBirth.test(m_birth.value)) {
		alert("생년월일 숫자 8자리를 입력해주세요." +
				" ex : 19990131");
		m_birth.focus();
		return false;
	}
	
	
	
	///////
	// 휴대폰 번호
	// 번호 확인
	if (m_phone.value.length == 0) {
		alert("전화번호를 입력해주세요.");
		m_phone.focus();
		return false;
	}
	
	else if (!regPhone.test(m_phone.value)) {
		alert("전화번호를 확인해주세요" +
				" ex : 01011112222");
		m_phone.focus();
		return false;
	}
	
	
	
	/////////
	// 이메일
	// 이메일 입력 확인
	if (m_email.value.length == 0) {
		alert("메일 주소를 입력해주세요.");
		m_email.focus();
		return false;
	}
	
	// 이메일 형식 체크
	else if (!regEmail.test(m_email.value)) {
		alert("잘못된 이메일 형식입니다.");
		m_email.focus();
		return false;
	}
	
	
	///////
	// 성별
	// 성별 확인
	if (m_gender.value == "") {
		alert("성별을 선택해주세요.");
		m_gender.focus();
		return false;
	}
	
	return true;
	
} // validCheck function
























/////////////////
//// 중복검사 클릭 시, 중복체크할 페이지 열기
//function openIdChk() {
//	window.name = "parentForm";
//	window.open("member/IdCheckForm.jsp",
//			"chkForm", "width=500, height=300, resizable = no, scrollbars = no");
//}
//
//
//// 중복체크 진행 후, 아이디만 바꿔서 만드려고 하는 것을 방지
//// value를 idUncheck로 변경하여 중복체크가 실행되지 않았던 것으로 만듦
//function inputIdChk() {
//	document.userInfo.idDuplication.value ="idUncheck";
//}
//
//
//// 회원가입창의 아이디 입력란의 값을 가져온다
//function pValue() {
//	// 회원가입창에서의 아이디 입력값을 가져옴.
//	document.getElementById("m_id").value = opener.document.userInfo.id.value;
//}


//function idCheck() {
//	
//	var id = document.getElementById("m_id").value;
//	
//	if (!id) {
//		alert("아이디를 입력해주세요.")
//		return false;
//	}
//	
//	else if ((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")) {
//		alert("아이디는 영어, 숫자만 사용해주세요.");
//		return false;
//	}
//	
//	else {
//		
//		var param = "id=" + id
//		
//		
//		
//	}
//	
//	
	
	
	
	
	
	
	
	













