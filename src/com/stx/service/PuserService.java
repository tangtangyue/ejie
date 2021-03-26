package com.stx.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stx.entity.MenuEntity;
import com.stx.entity.PuserEntity;

public interface PuserService {
	void select(HttpServletRequest request);
	void register(PuserEntity user);
	boolean login(PuserEntity user,HttpServletRequest request);
	void checkUser(HttpServletRequest request,HttpServletResponse response);
	void getBeanById(HttpServletRequest request,PuserEntity puser);
	void update(HttpServletRequest request,PuserEntity puser);
}
