package com.stx.service;

import javax.servlet.http.HttpServletRequest;

import com.stx.entity.MtypeEntity;

public interface MtypeService {
	void select(HttpServletRequest request);
	void save(MtypeEntity mtype);
	void delete(MtypeEntity type);
	void getBeanById(HttpServletRequest request,MtypeEntity type);
	void update(MtypeEntity type);
}
