package com.artmakers.dao;

import com.artmakers.entity.Member;

public interface MemberDao {

	int insert(Member member);

	Member get(String id);

}
