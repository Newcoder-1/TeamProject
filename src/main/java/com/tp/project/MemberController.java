package com.tp.project;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tp.project.signUp.SignUp;
import com.tp.project.signUp.SignUpDAO;
import com.tp.project.signUp.SignUpMapper;

@Controller
public class MemberController {
	
	@Autowired 
	SignUpDAO sDAO;
	SignUpMapper signUpMApper;
	
	
	// 회원가입 페이지로 이동
	@RequestMapping(value = "/signUp.do", method = RequestMethod.GET)
	public String memSignUp() {
		return "member/signUp";
	}
	
	// 회원가입
	@RequestMapping(value = "/member.reg", method = RequestMethod.POST)
	public String regMember(SignUp s, HttpServletRequest req, HttpSession session) {
		sDAO.regMember(s, req, session);
		sDAO.getAllSignUp(req);
		return "redirect:/";
	}
	
	// 로그아웃
	@RequestMapping(value = "/logOut.do", method = RequestMethod.GET)
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	// 로그인 페이지로 이동
	@RequestMapping(value = "/signIn.do", method = RequestMethod.GET )
	public String memSignIn() {
		return "member/signIn";
	}
	
	// 로그인
	@RequestMapping(value = "logIn.do", method = RequestMethod.POST)
	public String login(SignUp sl, HttpServletRequest req, HttpSession session) {
		sDAO.memLogIn(sl, req, session);
		sDAO.getAllSignUp(req);
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
	
	
}



























