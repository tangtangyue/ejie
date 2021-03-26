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
/*�����ע��*/
@Service
@Transactional
public class MtypeServiceImpl implements MtypeService{
	  @Resource
	MtypeMapper mapper;

	@Override
	public void select(HttpServletRequest request) {
		// TODO Auto-generated method stub
			
			// ����mapper���ѯ������ѯ����
					// ��ȡ��ǰҳ��
					String page_now = request.getParameter("page_now");
					
					if (page_now == null) {
						page_now = "1";
					}
					// �ַ���ת��������
					int pagenow = Integer.parseInt(page_now);

					// ��ȡ����������
					//ע�⣺mapper����Ҫ����getCount����
					int count = mapper.getCount();

					// ������ҳ�����
					PageModel page = new PageModel();
					// ���÷�ҳ��Ϣ----Ҫ�޸ĵ���Ϣ
					//ע�⣺�趨setPage����
					page.setPage("mtype/select", count, pagenow, 6);
					// ��ȡ��ǰ��ҳ�Ŀ�ʼ����
					int start = (page.getPage_now() - 1) * page.getPage_size();
					// ÿҳ��ѯ��������
					int end = page.getPage_size()*page.getPage_now();
					// ����ʼ������ÿҳչʾ���������map����
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
