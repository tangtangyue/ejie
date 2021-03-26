package com.stx.service.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stx.entity.MtypeEntity;
import com.stx.entity.PageModel;
import com.stx.entity.PuserEntity;
import com.stx.mapper.PuserMapper;
import com.stx.service.PuserService;

@Service
@Transactional
public class PuserServiceImpl implements PuserService{
	@Resource
	PuserMapper mapper;

	@Override
	public void register(PuserEntity user) {
		user.setId(UUID.randomUUID()+"");
		user.setFlag("0");
		mapper.save(user);
	}


	public boolean login(PuserEntity user, HttpServletRequest request) {
		PuserEntity u=mapper.login(user);
		if(u!=null){
			request.getSession().setAttribute("USER", u);
			return true;
		}else{
			return false;
		}
		
	}


	
	public void checkUser(HttpServletRequest request,
			HttpServletResponse response) {
		String zh=request.getParameter("zh");
		System.out.println(zh);
		PuserEntity user=mapper.checkUser(zh);
		//ajax 返回 0 表示用户不存在  1 表示存在
		try {
			if(user==null){
				response.setCharacterEncoding("utf-8");
				response.getWriter().print("0");
			}else{
				response.setCharacterEncoding("utf-8");
				response.getWriter().print("1");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	@Override
	public void select(HttpServletRequest request) {
		// TODO Auto-generated method stub
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
		page.setPage("puser/select", count, pagenow, 6);
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

		request.setAttribute("pusers", l);
		request.setAttribute("page", page);
	}


	@Override
	public void getBeanById(HttpServletRequest request, PuserEntity puser) {
		// TODO Auto-generated method stub
		PuserEntity p=mapper.getBeanById(puser.getId());
		request.setAttribute("puser", p);
		
	}


	@Override
	public void update(HttpServletRequest request, PuserEntity puser) {
		// TODO Auto-generated method stub
		mapper.aupdate(puser);
		
	}
		
}
	
