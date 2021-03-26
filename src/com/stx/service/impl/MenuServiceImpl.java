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
		// ��ȡ��ǰҳ��
		String page_now = request.getParameter("page_now");

		if (page_now == null) {
			page_now = "1";
		}
		// �ַ���ת��������
		int pagenow = Integer.parseInt(page_now);

		// ��ȡ����������
		// ע�⣺mapper����Ҫ����getCount����
		int count = mapper.getCount();

		// ������ҳ�����
		PageModel page = new PageModel();
		// ���÷�ҳ��Ϣ----Ҫ�޸ĵ���Ϣ
		// ע�⣺�趨setPage����
		page.setPage("menu/select", count, pagenow, 6);
		// ��ȡ��ǰ��ҳ�Ŀ�ʼ����
		int start = (page.getPage_now() - 1) * page.getPage_size();
		// ÿҳ��ѯ��������
		int end = page.getPage_size() * page.getPage_now();
		// ����ʼ������ÿҳչʾ���������map����
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
