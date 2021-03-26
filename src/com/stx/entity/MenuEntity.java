package com.stx.entity;

import org.springframework.web.multipart.MultipartFile;

public class MenuEntity {
	private String id;
	private String title;
	private String content;
	private String picpath;
	private float price;
	private String typeid;
	
	private MtypeEntity type;
	//spring的一个文件类，与文件上传有关
	private MultipartFile uploadFile;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPicpath() {
		return picpath;
	}
	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getTypeid() {
		return typeid;
	}
	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}
	public MtypeEntity getType() {
		return type;
	}
	public void setType(MtypeEntity type) {
		this.type = type;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	
	
}
