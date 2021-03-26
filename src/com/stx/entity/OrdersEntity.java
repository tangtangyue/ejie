package com.stx.entity;

public class OrdersEntity {
	private String id; 
	private String username ;
	private String address ;
	private String phone;
	private float zje;
	private String userid;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public float getZje() {
		return zje;
	}
	public void setZje(float zje) {
		this.zje = zje;
	}
	
	
}
