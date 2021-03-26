package com.stx.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.service.IndexService;
import com.stx.service.MenuService;

@Controller
@RequestMapping("/index")
public class IndexController {
	@Autowired
	private IndexService service;
	@Autowired
	private MenuService service1;
	@RequestMapping("/index")
	public String index(HttpServletRequest request){
		service1.selectA(request);
		service1.selectC(request);
		service1.selectD(request);
		service1.selectE(request);
		service.index(request);
		return "/front/index.jsp";
	}
	@RequestMapping("/showDetail")
	public String showDetail(HttpServletRequest request){
		service.showDetail(request);
		return "/front/proinfo.jsp";
	}
}
