package com.speedygrocer.dto;

public class ProductDTO {
	int pid;
	String pname;
	int pqty;
	int pcost;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPqty() {
		return pqty;
	}
	public void setPqty(int pqty) {
		this.pqty = pqty;
	}
	public int getPcost() {
		return pcost;
	}
	public void setPcost(int pcost) {
		this.pcost = pcost;
	}

}
