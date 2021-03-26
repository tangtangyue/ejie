package com.stx.service;

import javax.servlet.http.HttpServletRequest;

import com.stx.entity.GlyEntity;
import com.stx.entity.MenuEntity;

public interface GlyService {
	boolean login(HttpServletRequest request,GlyEntity gly);
	
}
