package com.artmakers.dao.hb;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.artmakers.dao.MemberDao;
import com.artmakers.entity.Member;

@Repository
public class HbMemberDao implements MemberDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public int insert(Member member) {
		
		Session session = sessionFactory.getCurrentSession();
		
		session.save(member);
		
		return 1;
	}

}
