package com.stx.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stx.entity.MenuEntity;
import com.stx.entity.OdetailEntity;
import com.stx.entity.OrdersEntity;
import com.stx.entity.PageModel;
import com.stx.entity.PuserEntity;
import com.stx.mapper.MenuMapper;
import com.stx.mapper.OrderMapper;
import com.stx.service.OrderService;
@Service
@Transactional
public class OrderServiceImpl implements OrderService {
	@Resource
	OrderMapper mapper;
	@Resource
	MenuMapper mmapper;
	@Override
	

	
	
	public void addShop(HttpServletRequest request) {
		String spid=request.getParameter("spid");
		String spsl=request.getParameter("spsl");
		int sl=Integer.parseInt(spsl);
		MenuEntity  menu=mmapper.getBeanById(spid);
		OdetailEntity oe=new OdetailEntity();
		oe.setPicpath(menu.getPicpath());
		oe.setPrice(menu.getPrice());
		oe.setSpsl(sl);
		oe.setTitle(menu.getTitle());
		//Ĭ�ϴ�session��ȡ���ﳵlist
		List shopl=(List)request.getSession().getAttribute("shop");
		if(shopl==null){
			List l=new ArrayList();
			request.getSession().setAttribute("shop", l);
			shopl=l;
		}
		shopl.add(oe);
		
		float zje=0.0f;
		OrdersEntity o=new OrdersEntity();
		zje+=oe.getPrice()*oe.getSpsl();
		request.setAttribute("o", zje);
		
	
	}
	
	public void xd(HttpServletRequest request) {
		PuserEntity user=(PuserEntity)request.getSession().getAttribute("USER");
		OrdersEntity o=new OrdersEntity();
		o.setAddress(user.getAddress());
		String id=UUID.randomUUID()+"";
		o.setId(id);
		o.setUserid(user.getId());
		o.setPhone(user.getPhone());
		o.setUsername(user.getRealname());
		
		List shopl=(List)request.getSession().getAttribute("shop");
		float zje=0.0f;
		for(int i=0;i<shopl.size();i++){
			OdetailEntity od=(OdetailEntity)shopl.get(i);
			od.setId(UUID.randomUUID()+"");
			od.setOrderid(id);
			mapper.saveOdetail(od);
			zje+=od.getPrice()*od.getSpsl();
		}
		o.setZje(zje);
		mapper.saveOrder(o);
		
		request.getSession().removeAttribute("shop");
	}

	public void xd1(HttpServletRequest request,HttpServletResponse response) {
		PuserEntity user=(PuserEntity)request.getSession().getAttribute("USER");
		OrdersEntity o=new OrdersEntity();
		
		o.setAddress(user.getAddress());
		String id=UUID.randomUUID()+"";
		o.setId(id);
		o.setUserid(user.getId());
		o.setPhone(user.getPhone());
		o.setUsername(user.getRealname());
		
		List shopl=(List)request.getSession().getAttribute("shop");
		float zje=0.0f;
		for(int i=0;i<shopl.size();i++){
			OdetailEntity od=(OdetailEntity)shopl.get(i);
			od.setId(UUID.randomUUID()+"");
			od.setOrderid(id);
			mapper.saveOdetail(od);
			zje+=od.getPrice()*od.getSpsl();
		}
		o.setZje(zje);
		/*List list= mapper.saveOrder1(o);
		int count=0;
		for(int i=0;i<list.size();i++) {
			OrdersEntity ord=(OrdersEntity)list.get(i);
			count+=ord.getZje();
		}*/
		try {
				response.setCharacterEncoding("utf-8");
				response.getWriter().print(zje);		
			}catch (IOException e) { 
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}


	public void getOrdersByUser(HttpServletRequest request) {
		PuserEntity user=(PuserEntity)request.getSession().getAttribute("USER");
		String uid=user.getId();
		
		
		// ��ȡ��ǰҳ��
				String page_now = request.getParameter("page_now");

				if (page_now == null) {
					page_now = "1";
				}
				// �ַ���ת��������
				int pagenow = Integer.parseInt(page_now);

				// ��ȡ����������
				// ע�⣺mapper����Ҫ����getCount����
				int count = mapper.getCount(uid);
				// ������ҳ�����
				PageModel page = new PageModel();
				// ���÷�ҳ��Ϣ----Ҫ�޸ĵ���Ϣ
				// ע�⣺�趨setPage����
				page.setPage("order/getOrdersByUser", count, pagenow, 3);
				// ��ȡ��ǰ��ҳ�Ŀ�ʼ����
				int start = (page.getPage_now() - 1) * page.getPage_size();
				// ÿҳ��ѯ��������
				int end = page.getPage_size() * page.getPage_now();
				// ����ʼ������ÿҳչʾ���������map����
				System.out.println(start + " " + end);
				Map map = new HashMap();
				map.put("start", start);
				map.put("end", end);
				map.put("uid", uid);
				
				List l=mapper.getOrderByUser(map);
				request.setAttribute("orders", l);
				request.setAttribute("page", page);
			
				
		
	}

	
	public void getDetailByOid(HttpServletRequest request,OrdersEntity order) {

		
		List l=mapper.getDetailByOrderId(order.getId());
		request.setAttribute("details", l);
	
	
		
	}

	@Override
	public void selectAll(HttpServletRequest request) {
		// ��ȡ��ǰҳ��
		String page_now = request.getParameter("page_now");

		if (page_now == null) {
			page_now = "1";
		}
		// �ַ���ת��������
		int pagenow = Integer.parseInt(page_now);

		// ��ȡ����������
		// ע�⣺mapper����Ҫ����getCount����
		int count = mapper.selectAllCount();

		// ������ҳ�����
		PageModel page = new PageModel();
		// ���÷�ҳ��Ϣ----Ҫ�޸ĵ���Ϣ
		// ע�⣺�趨setPage����
		page.setPage("order/select", count, pagenow, 6);
		// ��ȡ��ǰ��ҳ�Ŀ�ʼ����
		int start = (page.getPage_now() - 1) * page.getPage_size();
		// ÿҳ��ѯ��������
		int end = page.getPage_size() * page.getPage_now();
		// ����ʼ������ÿҳչʾ���������map����
		System.out.println(start + " " + end);
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List l=mapper.selectAll(map);

		request.setAttribute("menus", l);
		request.setAttribute("page", page);
	}

	}
	

