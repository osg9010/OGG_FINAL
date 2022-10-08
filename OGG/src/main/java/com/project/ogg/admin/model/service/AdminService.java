package com.project.ogg.admin.model.service;

import java.util.List;

import com.project.ogg.admin.model.vo.Answer;
import com.project.ogg.admin.model.vo.MemberAD;
import com.project.ogg.admin.model.vo.Notice;
import com.project.ogg.admin.model.vo.Question;
import com.project.ogg.common.util.PageInfo;

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

	int insertAnswer(Answer answer);

	int updateQnA(Answer answer);

	int answerUpdate(Answer answer);

	int writeQuestion(Question question);

	List<MemberAD> getMemberList();

	int updateQuestion(Question question);
	

}
