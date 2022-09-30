package com.project.ogg.member.model.vo;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	
	private int m_no; // 회원번호
	private String m_id; // 아이디
	private String m_pwd; // 비밀번호
	private String m_name; // 이름
	private String m_nickname; // 닉네임
	private String m_phonenumber; // 휴대폰 번호
	private String m_email; // 이메일
	private Date m_joindate; // 가입 날짜
	private String m_emailagreement; // 이메일 수신 동의 여부 (Y:동의 / N:비동의 / DEFAULT 'N")
	private String m_recommend; // 추천인 아이디

	private Date m_agreement; // 약관 동의 날짜 
	private String m_status; // 상태 (Y:가입 / N:탈퇴)
	private String m_authority; // 권한 (ROLE_USER:이용자 / ROLE_ADMIN:운영자)
	private int m_enabled; // 시큐리티 적용
	
	private String m_account; // 등록 계좌
	private String m_card_name; // 카드사
	private String m_card_num; // 카드 번호
	private int m_point; // 포인트
	
	private String M_snsId; // SNS 로그인

}