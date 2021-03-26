package com.stx.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.entity.OrdersEntity;
import com.stx.entity.PuserEntity;
import com.stx.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderService service;
	
	@RequestMapping("/addShop")
	public String addShop(HttpServletRequest request){
		service.addShop(request);
		return "/front/order.jsp";
	}
	@RequestMapping("/xd")
	public String xd(HttpServletRequest request){
		PuserEntity user=(PuserEntity)request.getSession().getAttribute("USER");
		if(user==null){
			return "/front/login.jsp";
		}else{
			//调用服务层将下单信息入库
			service.xd(request);
			//跳转到下单成功页
			return "/front/success.jsp";
		}
		
	}
	
	@RequestMapping("/xd1")
	public void xd(HttpServletRequest request,HttpServletResponse response){		
			service.xd1(request,response);	
	}
	@RequestMapping("/getOrdersByUser")
	public String getOrdersByUser(HttpServletRequest request){
		service.getOrdersByUser(request);
		return "/front/myorder.jsp";
	}
	@RequestMapping("/getDetailByOid")
	public String getDetailByOid(HttpServletRequest request,OrdersEntity order){
		service.getDetailByOid(request, order);
		return "/front/mo-detail.jsp";
	}
	
	@RequestMapping("/select")
	public String select(HttpServletRequest request){
		service.selectAll(request);
		return "/admin/link.jsp";
	}
}
