	package com.stx.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.entity.MenuEntity;
import com.stx.entity.MtypeEntity;
import com.stx.service.MenuService;

@Controller
@RequestMapping("/menu")
public class MenuController {
	@Autowired
	private MenuService service;
	@RequestMapping("/select")
	public String select(HttpServletRequest request){
		service.select(request);
		return "/admin/news.jsp";
	}
	@RequestMapping("/getTypes")
	public String getTypes(HttpServletRequest request){
		service.getTypes(request);
		return "/admin/menu_add.jsp";
	}
	@RequestMapping("/save")
	public String save(MenuEntity menu,HttpServletRequest request){
		service.save(menu, request);
		return "redirect:/menu/select";
	}
	
	@RequestMapping("/delete")
	public String delete(MenuEntity menu,HttpServletRequest request){
		service.delete(request, menu);
		return "redirect:/menu/select";
	}
	@RequestMapping("/getBeanById")
	public String getBeanById(MenuEntity menu,HttpServletRequest request){
		service.getBeanById(request, menu);
		return "/admin/menu_edit.jsp";
	}
	@RequestMapping("/update")
	public String update(HttpServletRequest request,MenuEntity menu){
		service.update(request, menu);
		return "redirect:/menu/select";
	}
	
}
