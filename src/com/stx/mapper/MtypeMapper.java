package com.stx.mapper;

import java.util.List;
import java.util.Map;

import com.stx.entity.MtypeEntity;

public interface MtypeMapper {
	int getCount();
	List select(Map map);
	List selectAll();
	void save(MtypeEntity mtype);
	void delete(String id);
	MtypeEntity getBeanById(String id);
	void update(MtypeEntity type);
}
