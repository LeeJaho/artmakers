package com.artmakers.dao.hb;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.artmakers.dao.DayFolderDao;
import com.artmakers.entity.Dayfolder;

@Repository
public class HbDayFolderDao implements DayFolderDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public int insert(Dayfolder dayFolder) {
		
		Session session = sessionFactory.getCurrentSession();
		
		session.save(dayFolder);
		
		return 1;
	}

	@Override
	@Transactional
	public List<Dayfolder> getList(String memberId) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Dayfolder> query = session.createQuery("from Dayfolder where memberId=:id "
										+ "order by regDate desc", Dayfolder.class)
										.setParameter("id", memberId);
		List<Dayfolder> list = query.getResultList();
		return list;
	}

}
