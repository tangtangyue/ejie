package com.stx.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.entity.GlyEntity;
import com.stx.entity.MenuEntity;
import com.stx.entity.PuserEntity;
import com.stx.service.PuserService;

@Controller
@RequestMapping("/puser")
public class PuserContorller {
	@Autowired
	private PuserService service;
	
	@RequestMapping("/register")
	public String register(PuserEntity user){
		service.register(user);
		return "/front/login.jsp";
	}
	@RequestMapping("/login")
	public String login(PuserEntity user,HttpServletRequest request){
		boolean b=service.login(user, request);
		if(b){
			return "redirect:/index/index";
		}else{
			return "/front/login.jsp";
		}
	}
	@RequestMapping("/checkUser")
	public void checkUser(HttpServletRequest request,HttpServletResponse response){
		service.checkUser(request, response);
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,GlyEntity gly){
		request.getSession().removeAttribute("AUSER");
		return "/front/login.jsp";
	}
	
	@RequestMapping("/select")
	public String select(HttpServletRequest request){
		service.select(request);
		return "/admin/user.jsp";
	}
	
	@RequestMapping("/getBeanById")
	public String getBeanById(HttpServletRequest request,PuserEntity puser){
		service.getBeanById(request, puser);
		return "/front/personal.jsp";
		
		
	}
	
	@RequestMapping("/update")
	public String update(HttpServletRequest request,PuserEntity puser){
		service.update(request, puser);
		return "/front/login.jsp";
	}
	
	@RequestMapping("/agetBeanById")
	public String agetBeanById(HttpServletRequest request,PuserEntity puser){
		service.getBeanById(request, puser);
		return "/admin/user_edit.jsp";
		
		
	}
	
	@RequestMapping("/aupdate")
	public String aupdate(HttpServletRequest request,PuserEntity puser){
		service.update(request, puser);
		return "redirect:/puser/select";
	}
}
