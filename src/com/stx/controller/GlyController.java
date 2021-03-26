package com.stx.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.entity.GlyEntity;
import com.stx.entity.MenuEntity;
import com.stx.service.GlyService;

@Controller
@RequestMapping("/gly")
public class GlyController {
	@Autowired
	private GlyService service;
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request,GlyEntity gly){
		boolean b=service.login(request, gly);
		if(b){
			return "/admin/manager_index.jsp";
		}else{
			return "/admin/manager.jsp";
		}
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,GlyEntity gly){
		request.getSession().removeAttribute("AUSER");
		return "/admin/manager.jsp";
	}
	
}
