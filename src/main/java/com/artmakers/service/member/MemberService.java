package com.artmakers.service.member;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.artmakers.dao.DayFolderDao;
import com.artmakers.dao.DayWriteDao;
import com.artmakers.dao.MemberDao;
import com.artmakers.entity.Day;
import com.artmakers.entity.Dayfolder;
import com.artmakers.entity.Member;

@Service("memberService")
public class MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private DayFolderDao dayFolderDao;
	
	@Autowired
	private DayWriteDao dayWriteDao;
	
	@Transactional
	public int insertMember(Member member) {
		
		int result = memberDao.insert(member);
		return result;
	}

	@Transactional
	public Member getMember(String id) {
		
		Member member = memberDao.get(id);
		return member;
	}

	@Transactional
	public List<Dayfolder> getFolderList(String memberId) {
		List<Dayfolder> dayfolder = dayFolderDao.getList(memberId);
		return dayfolder;
	}
	
	@Transactional
	public int getFolderId(String memberId, String folderName) {
		int dayFolderId = dayFolderDao.getFolderId(memberId, folderName);
		return dayFolderId;
	}
	
	@Transactional
	public int insertDay(Day day) {
		int result = dayWriteDao.insert(day);
		return result;
	}



}
