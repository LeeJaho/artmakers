package com.artmakers.service.member;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.artmakers.dao.DayFolderDao;
import com.artmakers.dao.DayWriteDao;
import com.artmakers.dao.MemberDao;
import com.artmakers.entity.Day;
import com.artmakers.entity.Dayfolder;
import com.artmakers.entity.Member;

//@Service("dayWriteService")
public class DaywriteService {

	@Autowired
	private DayWriteDao dayWriteDao;
	
	@Transactional
	public int insertDayWrite(Day day) {
		int result = dayWriteDao.insert(day);
		return result;
	}

}
