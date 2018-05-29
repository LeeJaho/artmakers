package com.artmakers.service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.artmakers.dao.DayFolderDao;
import com.artmakers.dao.MemberDao;
import com.artmakers.entity.Dayfolder;
import com.artmakers.entity.Member;

@Service("collectionService")
public class CollectionService {

	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private DayFolderDao dayFolderDao;
	
	public Member getMember(String id) {
		Member member = memberDao.get(id);
		return member;
	}
	public int insertDayFolder(Dayfolder dayFolder) {
		int result = dayFolderDao.insert(dayFolder);
		return result;
	}

}
