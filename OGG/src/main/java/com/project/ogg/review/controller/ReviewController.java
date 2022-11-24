package com.project.ogg.review.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.ogg.member.model.vo.Member;
import com.project.ogg.review.model.service.ReviewService;
import com.project.ogg.review.model.vo.Film;
import com.project.ogg.review.model.vo.Review;
import com.project.ogg.review.model.vo.ReviewCmt;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService service;
	
	@GetMapping("/review_detail")
	public ModelAndView reviewDetail(ModelAndView model,
			@AuthenticationPrincipal Member member,
			@RequestParam("fcode") String fcode,
			@RequestParam("ftype") String ftype,
			@RequestParam int no,
			HttpServletRequest request,
			HttpServletResponse response) {
		
		int cmtCount = 0;
		Review review = new Review();
		boolean hasRead = false;
		Cookie[] cookies = request.getCookies();
		String reviewHistory = "";
		List<ReviewCmt> reviewCmt = new ArrayList<ReviewCmt>();

    	if(cookies != null) {
    		String name = null;
    		String value = null;
    		for (Cookie cookie : cookies) {
				name = cookie.getName();
				value = cookie.getValue();
				
				if(name.equals("reviewHistory")) {
					reviewHistory = value;
					
					if(value.contains("|" + no + "|")) {
						hasRead = true;
						
						break;
					}
				}
			}
    	}
    	
    	if(!hasRead) {
    		Cookie cookie = new Cookie("reviewHistory", reviewHistory + "|" + no + "|");
        	cookie.setMaxAge(-1);
        	response.addCookie(cookie);
    	}    	
		
		review = service.getReviewByNo(no, hasRead);
		cmtCount = service.getCmtCountByNo(no);
		reviewCmt = service.getCmtByReviewNo(no);
		
		model.addObject("fcode", fcode);
		model.addObject("ftype", ftype);
		model.addObject("review", review);
		model.addObject("cmtCount", cmtCount);
		model.addObject("reviewCmt", reviewCmt);
		model.addObject("loginMember", member);
		model.setViewName("review/review_detail");
		
		return model;
	}
	
	@PostMapping("/review_write")
	@ResponseBody
	public Map<String, Review> reviewWrite(
			@AuthenticationPrincipal Member member,
			@ModelAttribute Review review,
			@ModelAttribute Film film) {

		int fcode = 0;
		int insertFilm = 0;
		int reviewWrite = 0;
		Film filmCheck = null;
		Map<String, Review> map = new HashMap<>(); 

		if(member != null) {

			review.setRvWriterNo(member.getM_no());
			fcode = Integer.parseInt(review.getFCode());
			filmCheck = service.filmcheck(fcode);
			
			if(filmCheck == null) {
				insertFilm = service.filmInsert(film);
				if(insertFilm > 0) {
					reviewWrite = service.reviewWrite(review);
				} 
			} else {
				reviewWrite = service.reviewWrite(review);
			}
		}
		
		map.put("rv", review);
		
		return map;
	}

	@PostMapping("/review_update")
	public ModelAndView reviewUpdate(ModelAndView model,
			@AuthenticationPrincipal Member member,
			@RequestParam("fCode") String fCode,
			@RequestParam("ftype") String ftype,
			@ModelAttribute Review review) {
		
		int reviewUpdate = 0;
		if(member != null) {

			review.setRvWriterNo(member.getM_no());
			reviewUpdate = service.reviewUpdate(review);
			
			if(reviewUpdate > 0) {
				System.out.println("리뷰 수정 성공");
			}else {
				System.out.println("리뷰 수정 실패");
			}
		}
		model.setViewName("review/review_list");

		return model;
	}
	
}
