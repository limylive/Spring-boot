package com.mtpiao.entity;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class TicketInfo {
	private int tid;
	private String tname;
	private String tprice;
	private String timg;
	private String ttype;
	private String tsinger;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date tshowTime;
	private int tnum;
	private int tvenue;
	List<Shopping> shopping;
	// 用于查询票的场馆信息
	Venue venue;
	public List<Shopping> getShopping() {
		return shopping;
	}

	public void setShopping(List<Shopping> shopping) {
		this.shopping = shopping;
	}
	public Venue getVenue() {
		return venue;
	}

	public void setVenue(Venue venue) {
		this.venue = venue;
	}

	@Override
	public String toString() {
		return "TicketInfo [tid=" + tid + ", tname=" + tname + ", tprice=" + tprice + ", timg=" + timg + ", ttype="
				+ ttype + ", tsinger=" + tsinger + ", tshowTime=" + tshowTime + ", tnum=" + tnum + ", tvenue=" + tvenue
				+ ", venue=" + venue + "]";
	}

	public TicketInfo() {
	}

	public TicketInfo(int tid, String tname, String tprice, String timg, String ttype, String tsinger, Date tshowTime,
			int tnum, int tvenue) {
		super();
		this.tid = tid;
		this.tname = tname;
		this.tprice = tprice;
		this.timg = timg;
		this.ttype = ttype;
		this.tsinger = tsinger;
		this.tshowTime = tshowTime;
		this.tnum = tnum;
		this.tvenue = tvenue;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTprice() {
		return tprice;
	}

	public void setTprice(String tprice) {
		this.tprice = tprice;
	}

	public String getTimg() {
		return timg;
	}

	public void setTimg(String timg) {
		this.timg = timg;
	}

	public String getTtype() {
		return ttype;
	}

	public void setTtype(String ttype) {
		this.ttype = ttype;
	}

	public String getTsinger() {
		return tsinger;
	}

	public void setTsinger(String tsinger) {
		this.tsinger = tsinger;
	}

	public Date getTshowTime() {
		return tshowTime;
	}

	public void setTshowTime(Date tshowTime) {
		this.tshowTime = tshowTime;
	}

	public int getTnum() {
		return tnum;
	}

	public void setTnum(int tnum) {
		this.tnum = tnum;
	}

	public int getTvenue() {
		return tvenue;
	}

	public void setTvenue(int tvenue) {
		this.tvenue = tvenue;
	}

}
