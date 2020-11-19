package com.mtpiao.entity;

import java.util.Date;

public class Shopping {
	private int sid;
	private int suid;
	private int stid;
	private int snumber;
	private Date stime;
	
	TicketInfo ticketinfo;
	Users  users;
	Venue  venue;

	public Shopping() {
	}

	public Shopping(int sid, int suid, int stid, int snumber,Date stime,TicketInfo ticketinfo,Users  users,Venue venue) {
		super();
		this.sid = sid;
		this.suid = suid;
		this.stid = stid;
		this.snumber=snumber;
		this.stime = stime;
		this.ticketinfo= ticketinfo;
		this.users= users;
		this.venue= venue;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public int getSuid() {
		return suid;
	}

	public void setSuid(int suid) {
		this.suid = suid;
	}

	public int getStid() {
		return stid;
	}

	public void setStid(int stid) {
		this.stid = stid;
	}

	public int getSnumber() {
		return snumber;
	}

	public void setNumber(int snumber) {
		this.snumber = snumber;
	}

	public Date getStime() {
		return stime;
	}

	public void setStime(Date stime) {
		this.stime = stime;
	}

	public TicketInfo getTicketinfo() {
		return ticketinfo;
	}

	public void setTicketinfo(TicketInfo ticketinfo) {
		this.ticketinfo = ticketinfo;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Venue getVenue() {
		return venue;
	}

	public void setVenue(Venue venue) {
		this.venue = venue;
	}

	public void setSnumber(int snumber) {
		this.snumber = snumber;
	}
	

}
