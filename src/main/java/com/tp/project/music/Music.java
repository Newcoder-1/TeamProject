package com.tp.project.music;

import java.io.File;
import java.math.BigDecimal;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Music {
	private BigDecimal s_no;
	private String s_title;
	private String s_artist;
	private String s_genre;
	private String s_date_String;
	private Date s_date;
	private String s_album;
	private MultipartFile s_album_file;
	private String s_lyrics;
	private String s_embed;
	
	public Music() {
		// TODO Auto-generated constructor stub
	}

	public Music(BigDecimal s_no, String s_title, String s_artist, String s_genre, String s_date_String, Date s_date,
			String s_album, MultipartFile s_album_file, String s_lyrics, String s_embed) {
		super();
		this.s_no = s_no;
		this.s_title = s_title;
		this.s_artist = s_artist;
		this.s_genre = s_genre;
		this.s_date_String = s_date_String;
		this.s_date = s_date;
		this.s_album = s_album;
		this.s_album_file = s_album_file;
		this.s_lyrics = s_lyrics;
		this.s_embed = s_embed;
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
	
	public String getS_date_String() {
		return s_date_String;
	}

	public void setS_date_String(String s_date_String) {
		this.s_date_String = s_date_String;
	}

	public Date getS_date() {
		return s_date;
	}

	public void setS_date(Date s_date) {
		this.s_date = s_date;
	}

	public String getS_album() {
		return s_album;
	}

	public void setS_album(String s_album) {
		this.s_album = s_album;
	}

	public MultipartFile getS_album_file() {
		return s_album_file;
	}

	public void setS_album_file(MultipartFile s_album_file) {
		this.s_album_file = s_album_file;
	}

	public String getS_lyrics() {
		return s_lyrics;
	}

	public void setS_lyrics(String s_lyrics) {
		this.s_lyrics = s_lyrics;
	}

	public String getS_embed() {
		return s_embed;
	}

	public void setS_embed(String s_embed) {
		this.s_embed = s_embed;
	}
	
}
