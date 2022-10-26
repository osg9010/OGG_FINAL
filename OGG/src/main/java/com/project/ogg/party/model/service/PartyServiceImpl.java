package com.project.ogg.party.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ogg.common.util.PageInfo;
import com.project.ogg.party.model.mapper.PartyMapper;
import com.project.ogg.party.model.vo.MyParty;
import com.project.ogg.party.model.vo.Ott;
import com.project.ogg.party.model.vo.Party;
import com.project.ogg.party.model.vo.Point;

@Service
public class PartyServiceImpl implements PartyService {
	
	@Autowired
	private PartyMapper mapper;
	
	@Override
	public List<Ott> getOttList() {
		
		return mapper.selectOttList();
	}

	@Override
	public List<Ott> getPlanInfo(String ottName) {

		return mapper.selectPlanList(ottName);
	}

	@Override
	public Ott getPlanName(int ottNo) {

		return mapper.selectPlan(ottNo);
	}

	@Override
	public Ott getOttInfo(int modal_ott_no) {
		
		return mapper.selectOttInfo(modal_ott_no);
	}

	@Override
	public int partyCreate(Party party, int m_no) {
		mapper.insertParty(party);
		
		//Party getm_no = mapper.getPartyNo(m_no);
		
		
		return mapper.getPartyNo(m_no);
	}

	@Override
	public List<Party> getPartyList(String ottName) {
		
		return mapper.getPartyList(ottName);
	}

	@Override
	public Party selectParty(int no) {
		
		return mapper.selectParty(no);
	}

	@Override
	public int insertPartyMemeber(Party party) {
		
		return mapper.insertPartyMemeber(party);
	}

	@Override
	public int partyMemberCheck(Party party) {

		return mapper.partyMemberCheck(party);
	}

	@Override
	public void updatePartyMember(Party party) {
		
		mapper.updatePartyMember(party);	
	}

	@Override
	public void updateMemberPoint(Party party) {
		
		mapper.updateMemberPoint(party);
	}

	@Override
	public void insertPoint(Point pointVo) {
		
		mapper.insertPoint(pointVo);
	}

	@Override
	public List<Point> getPointList(PageInfo pageInfo, int m_no) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
	    int limit = pageInfo.getListLimit();
	    RowBounds rowBounds = new RowBounds(offset, limit);
		
		return mapper.getPointList(rowBounds, m_no);
	}

	@Override
	public int getPointCount(int m_no) {
		
		return mapper.getPointCount(m_no);
	}

	@Override
	public List<MyParty> getPartyListByNo(int m_no) {
		
		return mapper.getPartyListByNo(m_no);
	}

	@Override
	public List<MyParty> partyMemberList(int no) {

		return mapper.partyMemberList(no);
	}

	@Override
	public int updateParty(Party party) {

		return mapper.updateParty(party);
	}



}
