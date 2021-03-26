package com.stx.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stx.entity.OrdersEntity;

public interface OrderService {
	void selectAll(HttpServletRequest request);
	void addShop(HttpServletRequest request);
	void xd(HttpServletRequest request);
	void xd1(HttpServletRequest request,HttpServletResponse response);
	void getOrdersByUser(HttpServletRequest request);
	void getDetailByOid(HttpServletRequest request,OrdersEntity order);
}
