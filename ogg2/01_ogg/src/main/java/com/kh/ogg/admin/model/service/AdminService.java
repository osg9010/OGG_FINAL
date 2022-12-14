package com.kh.ogg.admin.model.service;

import java.util.List;

import com.kh.ogg.admin.model.vo.Answer;
import com.kh.ogg.admin.model.vo.Notice;
import com.kh.ogg.admin.model.vo.Question;
import com.kh.ogg.common.util.PageInfo;

public interface AdminService {

//	List<MemberAD> getMemberList();

	List<Notice> getNoticeList(PageInfo pageInfo);

	int getNoticeCount();

	Notice getNoticeView(int page);

	int noticeSave(Notice notice);

	int deleteNotice(int no);

	int getQuestionCount();

	List<Question> getQuestionList(PageInfo pageInfo);

	Question getQuestionView(int no);

	Answer getAnswer(int q_no);
	

}
