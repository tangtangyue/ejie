package com.stx.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stx.entity.MenuEntity;
import com.stx.entity.PageModel;
import com.stx.mapper.MenuMapper;
import com.stx.mapper.MtypeMapper;
import com.stx.service.MenuService;
import com.stx.util.FileUtil;

@Service
@Transactional
public class MenuServiceImpl implements MenuService {
	@Resource
	MenuMapper mapper;
	
	@Resource
	MtypeMapper tmapper;

	@Override
	public void select(HttpServletRequest request) {
		// 获取当前页数
		String page_now = request.getParameter("page_now");

		if (page_now == null) {
			page_now = "1";
		}
		// 字符串转换成数字
		int pagenow = Integer.parseInt(page_now);

		// 获取数据总条数
		// 注意：mapper层需要定义getCount方法
		int count = mapper.getCount();

		// 创建分页类对象
		PageModel page = new PageModel();
		// 设置分页信息----要修改的信息
		// 注意：设定setPage参数
		page.setPage("menu/select", count, pagenow, 6);
		// 调取当前分页的开始条数
		int start = (page.getPage_now() - 1) * page.getPage_size();
		// 每页查询数据条数
		int end = page.getPage_size() * page.getPage_now();
		// 将开始条数和每页展示条数存放于map对象
		System.out.println(start + " " + end);
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List l=mapper.select(map);

		request.setAttribute("menus", l);
		request.setAttribute("page", page);
	}

	
	public void getTypes(HttpServletRequest request) {
		
		List l=tmapper.selectAll();
		request.setAttribute("types", l);
	}


	
	public void save(MenuEntity menu,HttpServletRequest request) {
		menu.setId(UUID.randomUUID()+"");
		String pic=FileUtil.upload(menu.getUploadFile(), request);
		menu.setPicpath(pic);
		mapper.save(menu);
	}



	public void delete(HttpServletRequest request, MenuEntity menu) {
		FileUtil.deleteFile(menu.getPicpath(),request);
		mapper.delete(menu.getId());
	}


	
	public void getBeanById(HttpServletRequest request, MenuEntity menu) {
		MenuEntity m=mapper.getBeanById(menu.getId());
		List l=tmapper.selectAll();
		request.setAttribute("types", l);
		request.setAttribute("menu", m);
	}


	
	public void update(HttpServletRequest request, MenuEntity menu) {
		/*System.out.println(menu.getUploadFile().getSize());
		System.out.println(menu.getUploadFile().getSize());*/
		if(menu.getUploadFile().getSize()>0){
			FileUtil.deleteFile(menu.getPicpath(), request);
			String pic=FileUtil.upload(menu.getUploadFile(), request);
			menu.setPicpath(pic);
		}
		mapper.update(menu);
	}
	public void selectA(HttpServletRequest request) {
		List list = mapper.selectB();
		request.setAttribute("tt", list);
	}
	public void selectC(HttpServletRequest request) {
		List list = mapper.selectC();
		request.setAttribute("CC", list);
	}
	public void selectD(HttpServletRequest request) {
		List list = mapper.selectD();
		request.setAttribute("DD", list);
	}
	
	public void selectE(HttpServletRequest request) {
		List list = mapper.selectE();
		request.setAttribute("EE", list);
	}


}
