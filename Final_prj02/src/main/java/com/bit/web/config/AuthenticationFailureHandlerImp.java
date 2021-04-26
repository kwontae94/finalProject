package com.bit.web.config;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

@Component
public class AuthenticationFailureHandlerImp implements AuthenticationFailureHandler {
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		
		String loginId = request.getParameter("userId");
		String error_msg="";
		
		if(exception instanceof BadCredentialsException) {
			error_msg="비밀번호 불일치";
		}else if(exception instanceof InternalAuthenticationServiceException) {
			error_msg="시스템 문제로인한 인증 확인 불가";
		}else if(exception instanceof DisabledException) {
			error_msg="계정 비활성화";
		}else if(exception instanceof CredentialsExpiredException) {
			error_msg="비밀 번호 만료";
		}
		
		request.setAttribute("loginId", loginId);
		request.setAttribute("error_msg", error_msg);
		request.getRequestDispatcher("/guest/login?error").forward(request, response);
		
	}

}
