package com.nt.Dto;

import java.io.Serializable;

public class CustomerDto implements Serializable 
{
private String cname;
private String cadd;
private float camt;
private float rate;
private float time;
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
public float getCamt() {
	return camt;
}
public void setCamt(float camt) {
	this.camt = camt;
}
public float getRate() {
	return rate;
}
public void setRate(float rate) {
	this.rate = rate;
}
public float getTime() {
	return time;
}
public void setTime(float time) {
	this.time = time;
}
}
