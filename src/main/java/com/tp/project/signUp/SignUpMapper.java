package com.tp.project.signUp;

import java.util.List;

public interface SignUpMapper {
	public abstract int regMember(SignUp s);
	public abstract List<SignUp> getAllSignUp();
}
