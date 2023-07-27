package com.tp.project.signUp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
	
	
	
	// ID 존재여부 확인
	public int registerCheck(String m_id) {
		// 기본값, 오류 설정
		int result = -1;

		// 연결
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = AsmanDBManager2.connect("AsmanPool");
			
			// sql문 작성
			String sql = "select * from member where m_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "m_id");
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				// 이미 존재하는 아이디
				result = 0;
			} else {
				// 사용 가능한 아이디
				result = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			result = -1; // db오류 발생시 리턴 -1값
		}
		
		AsmanDBManager2.close(conn, pstmt, rs);
		return result;
	
	} // selectAllId
	
	
	// 아이디 중복검사 확인
	public void duplicateCheck() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = AsmanDBManager2.connect("AsmanPool");
			
			String sql = "insert into member values (member_seq.nextval, "
					+ "?, ?, ?, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "m_id");
			pstmt.setString(2, "m_pw");
			pstmt.setString(3, "m_name");
			pstmt.setString(4, "m_birth");
			pstmt.setString(5, "m_phone");
			pstmt.setString(6, "m_email");
			pstmt.setString(7, "m_gender");
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	
	
	
} // class












