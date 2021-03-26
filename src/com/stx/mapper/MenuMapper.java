package com.stx.mapper;

import java.util.List;
import java.util.Map;

import com.stx.entity.MenuEntity;
import com.stx.entity.MtypeEntity;

public interface MenuMapper {
	int getCount();
	List select(Map map);
	List selectAll();
	void save(MenuEntity menu);
	void delete(String id);
	MenuEntity getBeanById(String id);
	void update(MenuEntity menu);
	List selectB();
	List selectC();
	List selectD();
	List selectE();
	
}
