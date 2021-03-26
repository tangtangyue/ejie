package com.stx.service;

import javax.servlet.http.HttpServletRequest;

import com.stx.entity.MenuEntity;
import com.stx.entity.MtypeEntity;

public interface MenuService {
	void select(HttpServletRequest request);
	void getTypes(HttpServletRequest request);
	void save(MenuEntity menu,HttpServletRequest request);
	void delete(HttpServletRequest request,MenuEntity menu);
	void getBeanById(HttpServletRequest request,MenuEntity menu);
	void update(HttpServletRequest request,MenuEntity menu);
	void selectA(HttpServletRequest request);
	void selectC(HttpServletRequest request);
	void selectD(HttpServletRequest request);
	void selectE(HttpServletRequest request);
}
