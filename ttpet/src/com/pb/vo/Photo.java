package com.pb.vo;

import java.sql.Timestamp;

/**
 * ’’∆¨ µÃÂ¿‡
 * @author Administrator
 *
 */
public class Photo {
	private Integer id;
	private String title;
	private String context;
	private Timestamp date;
	private Integer albumId;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public Integer getAlbumId() {
		return albumId;
	}
	public void setAlbumId(Integer albumId) {
		this.albumId = albumId;
	}
	
	
}
