package com.tp.project.signUp;

import java.util.List;

public interface SignUpMapper {
	public abstract int regMember(SignUp s);	// 회원등록
	public abstract List<SignUp> getAllSignUp();
	public abstract SignUp memLogIn(SignUp sl);
	public abstract int updateMember(SignUp s);
	
}
