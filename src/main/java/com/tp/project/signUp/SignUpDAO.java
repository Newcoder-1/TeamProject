package com.tp.project.signUp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignUpDAO {
	
	@Autowired
	private SqlSession ss;
	
	public void regMember(SignUp s, HttpServletRequest req) {
		try {
			SignUpMapper sm = ss.getMapper(SignUpMapper.class);
			
			if (sm.regMember(s) == 1) {
				req.setAttribute("r", "회원등록 성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "회원등록 실패");
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
}
