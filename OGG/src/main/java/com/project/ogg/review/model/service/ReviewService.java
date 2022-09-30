package com.project.ogg.review.model.service;

import java.util.List;

import com.project.ogg.common.util.PageInfo;
import com.project.ogg.review.model.vo.Review;
import com.project.ogg.review.model.vo.ReviewCmt;


public interface ReviewService {

	int getBoardCount();

	List<Review> getBoardList(PageInfo pageInfo);

	Review findReviewByNo(int no);

	List<ReviewCmt> findReviewCmtByNo(int no);

}
