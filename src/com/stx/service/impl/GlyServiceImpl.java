package com.stx.service.impl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stx.entity.GlyEntity;
import com.stx.entity.MtypeEntity;
import com.stx.mapper.GlyMapper;
import com.stx.service.GlyService;
/*·þÎñ²ã×¢½â*/
@Service
@Transactional
public class GlyServiceImpl implements GlyService{
	  @Resource
		GlyMapper mapper;

	@Override
	public boolean login(HttpServletRequest request, GlyEntity gly) {
		// TODO Auto-generated method stub
		
		GlyEntity g=mapper.login(gly);
		if(g!=null){
			request.getSession().setAttribute("AUSER", g);
			return true;
		}else{
			return false;
		}
		
	}

	
	
}
