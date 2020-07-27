package com.nt.Dto;

import java.io.Serializable;

public class CoranaDto implements Serializable
{
	private String cname;
	private String cadd;
	private float pamt;
	private int day;
	private float fbill;
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCadd() {
		return cadd;
	}
	public void setCadd(String cadd) {
		this.cadd = cadd;
	}
	public float getPamt() {
		return pamt;
	}
	public void setPamt(float pamt) {
		this.pamt = pamt;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public float getFbill() {
		return fbill;
	}
	public void setFbill(float fbill) {
		this.fbill = fbill;
	}
	
}
