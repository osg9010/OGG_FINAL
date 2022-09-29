package com.kh.ogg.security;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

public class CustomLoginFailHandler implements AuthenticationFailureHandler {	
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		
		System.out.println("AuthenticationFailureHandler ����");
		
		String errorMessage;
		
		if (exception instanceof BadCredentialsException) {
			errorMessage = "���̵� �Ǵ� ��й�ȣ�� ���� �ʽ��ϴ�. �ٽ� Ȯ���� �ּ���.";
		} else if (exception instanceof InternalAuthenticationServiceException) {
			errorMessage = "���������� �߻��� �ý��� ������ ���� ��û�� ó���� �� �����ϴ�. �����ڿ��� �����ϼ���.";
		} else if (exception instanceof DisabledException) {
			errorMessage = "���� ����� �� ���� �����Դϴ�. �����ڿ��� �����ϼ���.";
		} else if (exception instanceof UsernameNotFoundException) {
			errorMessage = "������ �������� �ʽ��ϴ�. ȸ������ ���� �� �α��� ���ּ���.";
		} else {
			errorMessage = "�� �� ���� ������ �α��ο� �����Ͽ����ϴ� �����ڿ��� �����ϼ���.";
		}
		
		System.out.println(errorMessage);
		
		request.setAttribute("errorMessage", errorMessage);
		request.getRequestDispatcher("/member/errorlogin.do").forward(request, response);
	}
	
}