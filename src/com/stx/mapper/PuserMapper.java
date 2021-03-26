package com.stx.mapper;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.stx.entity.MenuEntity;
import com.stx.entity.PuserEntity;

public interface PuserMapper {
	int getCount();
	List select(Map map);
	void save(PuserEntity user);
	PuserEntity login(PuserEntity user);
	PuserEntity checkUser(String zh);
	PuserEntity getBeanById(String id);
	void update(PuserEntity puser);
	void aupdate(PuserEntity puser);
}
