package com.artmakers.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class Day {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	
	private int dayfolderId;
	
	private String memberId;
	
	private int day;
	private String title;
	private String content;
	
	@Transient
	private String folderName;
	
	@Column(insertable=false)
	private int hit;
	
	@Column(insertable=false)
	private boolean secret;
	
	@Column(insertable=false)
	private Date regDate;

	public Day() {
		// TODO Auto-generated constructor stub
	}
	
	public Day(int id, int dayfolderId, String memberId, int day, String title, String content, String folderName,
			int hit, boolean secret, Date regDate) {
		super();
		this.id = id;
		this.dayfolderId = dayfolderId;
		this.memberId = memberId;
		this.day = day;
		this.title = title;
		this.content = content;
		this.folderName = folderName;
		this.hit = hit;
		this.secret = secret;
		this.regDate = regDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDayfolderId() {
		return dayfolderId;
	}

	public void setDayfolderId(int dayfolderId) {
		this.dayfolderId = dayfolderId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFolderName() {
		return folderName;
	}

	public void setFolderName(String folderName) {
		this.folderName = folderName;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public boolean isSecret() {
		return secret;
	}

	public void setSecret(boolean secret) {
		this.secret = secret;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "Day [id=" + id + ", dayfolderId=" + dayfolderId + ", memberId=" + memberId + ", day=" + day + ", title="
				+ title + ", content=" + content + ", folderName=" + folderName + ", hit=" + hit + ", secret=" + secret
				+ ", regDate=" + regDate + "]";
	}
	
	
}
