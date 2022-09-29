package com.kh.ogg.security;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Service;

@Service("AccessDeniedHandler")
public class CusomAccessDeniedHandler implements AccessDeniedHandler {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		
		System.out.println("AccessDeniedHandler ����");
		
		String accessDeniedMessage = null;
		
		if(accessDeniedException instanceof AccessDeniedException) {

			request.setAttribute("accessDeniedMessage", "���� ������ ���� �����Դϴ�.");
			request.getRequestDispatcher("/member/accessDenied.do").forward(request, response);
		}

		
	}
	

}
