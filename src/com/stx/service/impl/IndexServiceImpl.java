package com.stx.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stx.entity.MenuEntity;
import com.stx.mapper.MenuMapper;
import com.stx.mapper.MtypeMapper;
import com.stx.service.IndexService;

@Service
@Transactional
public class IndexServiceImpl implements IndexService{
	@Resource
	MenuMapper mapper;
	
	@Resource
	MtypeMapper tmapper;

	@Override
	public void index(HttpServletRequest request) {
		// TODO Auto-generated method stub
		List t1=tmapper.selectAll();
		List m1=mapper.selectAll();
		request.setAttribute("menus", m1);
		request.getSession().setAttribute("types", t1);
		
	}

	@Override
	public void showDetail(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		MenuEntity menu=mapper.getBeanById(id);
		request.setAttribute("menu", menu);
		
	}
	

}
