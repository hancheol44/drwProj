package com.project.pro.vo;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;

public class SalesVO {
	private int pno, bcnt, rno;
	private String ptt, bno, pbd, today, cate, bceo;
	private Date pDate;
	private Time pTime;
	
	
	public String getBceo() {
		return bceo;
	}
	public void setBceo(String bceo) {
		this.bceo = bceo;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getBcnt() {
		return bcnt;
	}
	public void setBcnt(int bcnt) {
		this.bcnt = bcnt;
	}
	public String getPtt() {
		return ptt;
	}
	public void setPtt(String ptt) {
		this.ptt = ptt;
	}
	public String getBno() {
		return bno;
	}
	public void setBno(String bno) {
		this.bno = bno;
	}
	public String getPbd() {
		return pbd;
	}
	public void setPbd(String pbd) {
		this.pbd = pbd;
	}
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	public void setToday() {
		SimpleDateFormat form1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat form2 = new SimpleDateFormat("HH:mm:ss");
		this.today = form1.format(pDate) + " " + form2.format(pTime);
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public Date getpDate() {
		return pDate;
	}
	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}
	public Time getpTime() {
		return pTime;
	}
	public void setpTime(Time pTime) {
		this.pTime = pTime;
	}
	
	
}
