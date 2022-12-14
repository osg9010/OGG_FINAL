package com.kh.ogg.member.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.ogg.member.model.vo.Member;

@Mapper
public interface MemberMapper {

	public int insertMember(Member member);

	public int idcheck(String m_id);
	
	public Member read(String m_id);
	
}