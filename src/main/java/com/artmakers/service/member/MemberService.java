package com.artmakers.service.member;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.artmakers.dao.MemberDao;
import com.artmakers.entity.Member;

@Service("memberService")
public class MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	
	@Transactional
	public int insertMember(Member member) {
		
		int result = memberDao.insert(member);
		return result;
	}

}
