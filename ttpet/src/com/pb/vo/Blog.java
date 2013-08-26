package com.pb.vo;

import java.sql.Timestamp;

/**
 * 日志实体类
 * @author Administrator
 *
 */
public class Blog {
	private Integer id;
	private String title;
	private String context;
	private Integer blog_type_id;
	private Integer auth;
	private Timestamp time;
	private String tip;
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
	public Integer getBlog_type_id() {
		return blog_type_id;
	}
	public void setBlog_type_id(Integer blogTypeId) {
		blog_type_id = blogTypeId;
	}
	public Integer getAuth() {
		return auth;
	}
	public void setAuth(Integer auth) {
		this.auth = auth;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
	
	
}
