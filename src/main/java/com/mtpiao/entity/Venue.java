package com.mtpiao.entity;

import java.util.List;

public class Venue {
	private int vid;
	private String vcity;
	private String vname;
	private String vimg;
	private String vaddress;
	List<Shopping> shopping;
	public List<Shopping> getShopping() {
		return shopping;
	}

	public void setShopping(List<Shopping> shopping) {
		this.shopping = shopping;
	}

	@Override
	public String toString() {
		return "Venue [vid=" + vid + ", vcity=" + vcity + ", vname=" + vname + ", vimg=" + vimg + ", vaddress="
				+ vaddress + "]";
	}

	public Venue() {
	}

	public Venue(int vid, String vcity, String vname, String vimg, String vaddress) {
		super();
		this.vid = vid;
		this.vcity = vcity;
		this.vname = vname;
		this.vimg = vimg;
		this.vaddress = vaddress;
	}

	public int getVid() {
		return vid;
	}

	public void setVid(int vid) {
		this.vid = vid;
	}

	public String getVcity() {
		return vcity;
	}

	public void setVcity(String vcity) {
		this.vcity = vcity;
	}

	public String getVname() {
		return vname;
	}

	public void setVname(String vname) {
		this.vname = vname;
	}

	public String getVimg() {
		return vimg;
	}

	public void setVimg(String vimg) {
		this.vimg = vimg;
	}

	public String getVaddress() {
		return vaddress;
	}

	public void setVaddress(String vaddress) {
		this.vaddress = vaddress;
	}
}
