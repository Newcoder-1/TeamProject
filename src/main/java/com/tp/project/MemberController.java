package com.tp.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tp.project.signUp.SignUp;
import com.tp.project.signUp.SignUpDAO;

@Controller
public class MemberController {
	
	@Autowired SignUpDAO sDAO;
	
	// 회원가입 페이지로 이동
	@RequestMapping(value = "/signUp.do", method = RequestMethod.GET)
	public String memSignUp() {
		return "signUp";
	}
	// 회원가입
	@RequestMapping(value = "/member.reg", method = RequestMethod.POST)
	public String regMember(SignUp s, HttpServletRequest req) {
		sDAO.regMember(s, req);
		sDAO.getAllSignUp(req);
		
		return "signUp";
	}
	// 로그인 페이지로 이동
	@RequestMapping(value = "/signIn.do", method = RequestMethod.GET )
	public String memSignIn() {
		return "signIn";
	}
}
