package com.artmakers.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Member {
	
	@Id
	private String id;
	
	private String pwd;
	private String nickname;
	private String photo;
	private String intro;
	
	@Column(insertable=false)
	private String role;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String id, String pwd, String nickname, String photo, String intro, String role) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.nickname = nickname;
		this.photo = photo;
		this.intro = intro;
		this.role = role;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", pwd=" + pwd + ", nickname=" + nickname + ", photo=" + photo + ", intro=" + intro
				+ ", role=" + role + "]";
	}
	
	
	
	
}
