package com.tp.project.signUp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.asman.db.manager.AsmanDBManager2;

@Service
public class SignUpDAO {
	
	@Autowired
	private SqlSession ss;
	
	
	public void regMember(SignUp s, HttpServletRequest req, HttpSession session) {
		try {
			String date_String = s.getM_birth_String();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			Date m_birth = sdf.parse(date_String);
			s.setM_birth(m_birth);
			
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
	
	public void memLogIn(SignUp sl, HttpServletRequest req, HttpSession session) {
		try {
			SignUpMapper sm = ss.getMapper(SignUpMapper.class);
			
			SignUp signUp = sm.memLogIn(sl); 
			if (signUp.getM_no() != null) {
			session.setAttribute("mvo", sl);
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateMember(SignUp s, HttpServletRequest req) {
		try {
			SignUpMapper sm = ss.getMapper(SignUpMapper.class);
			if (sm.updateMember(s) == 1) {
				req.setAttribute("result", "성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	
	
	
	
	
	
	
	
} // SignUpDAO



















