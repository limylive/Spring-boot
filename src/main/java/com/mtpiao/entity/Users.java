package com.mtpiao.entity;
import java.sql.Date;
public class Users {
	
	private int uid;
	private String uname;
	private String upwd;
	private String urname;
	private String usex;
	private String utel;
	private Date ubirthday;

	@Override
	public String toString() {
		return "Users [uid=" + uid + ", uname=" + uname + ", upwd=" + upwd + ", urname=" + urname + ", usex=" + usex
				+ ", utel=" + utel + ", ubirthday=" + ubirthday + "]";
	}

	public Users() {
	}

	public Users(int uid, String uname, String upwd, String urname, String usex, String utel, Date ubirthday) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upwd = upwd;
		this.urname = urname;
		this.usex = usex;
		this.utel = utel;
		this.ubirthday = ubirthday;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getUrname() {
		return urname;
	}

	public void setUrname(String urname) {
		this.urname = urname;
	}

	public String getUsex() {
		return usex;
	}

	public void setUsex(String usex) {
		this.usex = usex;
	}

	public String getUtel() {
		return utel;
	}

	public void setUtel(String utel) {
		this.utel = utel;
	}

	public Date getUbirthday() {
		return ubirthday;
	}

	public void setUbirthday(Date ubirthday) {
		this.ubirthday = ubirthday;
	}

}
