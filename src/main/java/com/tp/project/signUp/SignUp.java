package com.tp.project.signUp;

import java.math.BigDecimal;
import java.util.Date;

public class SignUp {
	private BigDecimal m_no;
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_birth_String;
	private Date m_birth;
	private String m_phone;
	private String m_email;
	private String m_gender;
	
	public SignUp() {
		// TODO Auto-generated constructor stub
	}
	
	public SignUp(BigDecimal m_no, String m_id, String m_pw, String m_name, String m_birth_String, Date m_birth,
			String m_phone, String m_email, String m_gender) {
		super();
		this.m_no = m_no;
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_birth_String = m_birth_String;
		this.m_birth = m_birth;
		this.m_phone = m_phone;
		this.m_email = m_email;
		this.m_gender = m_gender;
	}

	public BigDecimal getM_no() {
		return m_no;
	}

	public void setM_no(BigDecimal m_no) {
		this.m_no = m_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	
	public Date getM_birth() {
		return m_birth;
	}

	public void setM_birth(Date m_birth) {
		this.m_birth = m_birth;
	}

	public String getM_birth_String() {
		return m_birth_String;
	}

	public void setM_birth_String(String m_birth_String) {
		this.m_birth_String = m_birth_String;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_gender() {
		return m_gender;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	
	
}
