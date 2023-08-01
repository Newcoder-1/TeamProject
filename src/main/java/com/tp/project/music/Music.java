package com.tp.project.music;

import java.math.BigDecimal;
import java.util.Date;

public class Music {
	private BigDecimal s_no;
	private String s_title;
	private String s_artist;
	private String s_genre;
	private Date s_date;
	
	public Music() {
		// TODO Auto-generated constructor stub
	}

	public Music(BigDecimal s_no, String s_title, String s_artist, String s_genre, Date s_date) {
		super();
		this.s_no = s_no;
		this.s_title = s_title;
		this.s_artist = s_artist;
		this.s_genre = s_genre;
		this.s_date = s_date;
	}

	public BigDecimal getS_no() {
		return s_no;
	}

	public void setS_no(BigDecimal s_no) {
		this.s_no = s_no;
	}

	public String getS_title() {
		return s_title;
	}

	public void setS_title(String s_title) {
		this.s_title = s_title;
	}

	public String getS_artist() {
		return s_artist;
	}

	public void setS_artist(String s_artist) {
		this.s_artist = s_artist;
	}

	public String getS_genre() {
		return s_genre;
	}

	public void setS_genre(String s_genre) {
		this.s_genre = s_genre;
	}

	public Date getS_date() {
		return s_date;
	}

	public void setS_date(Date s_date) {
		this.s_date = s_date;
	}
	
}
