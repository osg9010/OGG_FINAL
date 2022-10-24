package com.project.ogg.security;

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
		
		String accessDeniedMessage = null;
		
		if(accessDeniedException instanceof AccessDeniedException) {

//			request.setAttribute("accessDeniedMessage", "접근 권한이 없는 계정입니다.");
			request.getRequestDispatcher("/member/accessDenied.do").forward(request, response);
		}
	
	}
	
}