package com.kh.ogg.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.kh.ogg.member.model.mapper.MemberMapper;
import com.kh.ogg.member.model.vo.Member;

// DB���� ���� ������ ���� �������� �������̽�
@Service("UserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	private MemberMapper mapper;

	@Override
	public UserDetails loadUserByUsername(String m_id) throws UsernameNotFoundException {
		Member member = mapper.read(m_id);
		
		if(member != null) {
			return new CustomUserDetails(member);
		}
		
		System.out.println("UserDetailsService : " + member);
	
		return null;
	}
}