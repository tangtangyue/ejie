package com.stx.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.entity.MtypeEntity;
import com.stx.service.MtypeService;

@Controller
@RequestMapping("/mtype")
public class MtypeController {
	
	@Autowired
	private MtypeService service;
	
	@RequestMapping("/select")
	public String select(HttpServletRequest request){
	service.select(request);
	return"/admin/newsType.jsp";
	}
	
	@RequestMapping("/save")
	public String save(MtypeEntity mtype){
		service.save(mtype);
		return "redirect:/mtype/select";
	}
	
	@RequestMapping("/delete")
	public String delete(MtypeEntity type){
		service.delete(type);
		return "redirect:/mtype/select";
	}
	
	@RequestMapping("/getBeanById")
	public String getBeanById(HttpServletRequest request,MtypeEntity type){
		service.getBeanById(request, type);
		return "/admin/type_edit.jsp";
	}
	
	@RequestMapping("/update")
	public String getBeanById(MtypeEntity type){
		service.update(type);
		return "redirect:/mtype/select";
	}
}
