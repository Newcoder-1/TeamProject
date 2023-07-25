package com.tp.project.signUp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Service
public class SignUpDAO {
	
	@Autowired
	private SqlSession ss;
	
	public void regMember(SignUp s, HttpServletRequest req, HttpSession session) {
		try {
			SignUpMapper sm = ss.getMapper(SignUpMapper.class);
			
			if (sm.regMember(s) == 1) {
				session.setAttribute("mvo", s);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void getAllSignUp(HttpServletRequest req) {
		try {
			List<SignUp> signUps = ss.getMapper(SignUpMapper.class).getAllSignUp();
			req.setAttribute("signUps", signUps);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void memLogIn(SignUp s, HttpServletRequest req, HttpSession session) {
		try {
			SignUpMapper sm = ss.getMapper(SignUpMapper.class);
			
			if (sm.memLogIn(s) == 1) {
				session.setAttribute("logIn", s);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	
}
