package com.artmakers.dao.hb;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.artmakers.dao.DayWriteDao;
import com.artmakers.entity.Day;

public class HbDaywriteDao implements DayWriteDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public int insert(Day day) {
		Session session = sessionFactory.getCurrentSession();
		
		session.save(day);
		
		return 1;
	}

}
