package com.speedygrocer.dto;

public class CategoryDTO {
	String cname;
	int cstatus;
	int cid;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getCstatus() {
		return cstatus;
	}
	public void setCstatus(int cstatus) {
		this.cstatus = cstatus;
	}
}
