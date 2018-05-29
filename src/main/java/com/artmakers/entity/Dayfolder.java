package com.artmakers.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Dayfolder {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String memberId;
	private String title;
	
	@Column(insertable=false)
	private Date regDate;
	
	public Dayfolder() {
		// TODO Auto-generated constructor stub
	}

	public Dayfolder(int id, String memberId, String title, Date regDate) {
		super();
		this.id = id;
		this.memberId = memberId;
		this.title = title;
		this.regDate = regDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "Dayfolder [id=" + id + ", memberId=" + memberId + ", title=" + title + ", regDate=" + regDate + "]";
	}
	
	
}
