package com.stx.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stx.entity.MtypeEntity;
import com.stx.entity.PageModel;
import com.stx.mapper.MtypeMapper;
import com.stx.service.MtypeService;
/*服务层注解*/
@Service
@Transactional
public class MtypeServiceImpl implements MtypeService{
	  @Resource
	MtypeMapper mapper;

	@Override
	public void select(HttpServletRequest request) {
		// TODO Auto-generated method stub
			
			// 调用mapper层查询方法查询数据
					// 获取当前页数
					String page_now = request.getParameter("page_now");
					
					if (page_now == null) {
						page_now = "1";
					}
					// 字符串转换成数字
					int pagenow = Integer.parseInt(page_now);

					// 获取数据总条数
					//注意：mapper层需要定义getCount方法
					int count = mapper.getCount();

					// 创建分页类对象
					PageModel page = new PageModel();
					// 设置分页信息----要修改的信息
					//注意：设定setPage参数
					page.setPage("mtype/select", count, pagenow, 6);
					// 调取当前分页的开始条数
					int start = (page.getPage_now() - 1) * page.getPage_size();
					// 每页查询数据条数
					int end = page.getPage_size()*page.getPage_now();
					// 将开始条数和每页展示条数存放于map对象
					System.out.println(start+" "+end);
					Map map = new HashMap();
					map.put("start", start);
					map.put("end", end);
					
					List list=mapper.select(map);
					
					request.setAttribute("types", list);
					request.setAttribute("page", page);
	
		
	}

	@Override
	public void save(MtypeEntity mtype) {
		// TODO Auto-generated method stub
		mtype.setId(UUID.randomUUID()+"");
		mapper.save(mtype);
		
	}
	
	@Override
	public void delete(MtypeEntity type) {
		// TODO Auto-generated method stub
	
		mapper.delete(type.getId());
		
	}

	@Override
	public void getBeanById(HttpServletRequest request,MtypeEntity type) {
		// TODO Auto-generated method stub
		MtypeEntity m=mapper.getBeanById(type.getId());
		request.setAttribute("type", m);
		
		
	}

	@Override
	public void update(MtypeEntity type) {
		// TODO Auto-generated method stub
		mapper.update(type);
		
	}

}
