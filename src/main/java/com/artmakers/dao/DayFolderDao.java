package com.artmakers.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.artmakers.entity.Dayfolder;


public interface DayFolderDao {

	int insert(Dayfolder dayFolder);

	List<Dayfolder> getList(String memberId);

	int getFolderId(String memberId, String folderName);

}
