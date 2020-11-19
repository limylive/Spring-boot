package com.mtpiao.entity;

public class OrderInfo {
	private int oid;
	private int ouid;
	private int otid;
	private String ostatus;
	private String oaddress;

	public OrderInfo() {
	}

	public OrderInfo(int oid, int ouid, int otid, String ostatus, String oaddress) {
		super();
		this.oid = oid;
		this.ouid = ouid;
		this.otid = otid;
		this.ostatus = ostatus;
		this.oaddress = oaddress;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getOuid() {
		return ouid;
	}

	public void setOuid(int ouid) {
		this.ouid = ouid;
	}

	public int getOtid() {
		return otid;
	}

	public void setOtid(int otid) {
		this.otid = otid;
	}

	public String getOstatus() {
		return ostatus;
	}

	public void setOstatus(String ostatus) {
		this.ostatus = ostatus;
	}

	public String getOaddress() {
		return oaddress;
	}

	public void setOaddress(String oaddress) {
		this.oaddress = oaddress;
	}
}
