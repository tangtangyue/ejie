package com.stx.mapper;

import java.util.List;
import java.util.Map;

import com.stx.entity.OdetailEntity;
import com.stx.entity.OrdersEntity;

public interface OrderMapper {
	int selectAllCount();
	List selectAll(Map map);
	int getOdetailCount();
	void saveOrder(OrdersEntity order);
	void saveOdetail(OdetailEntity od);
	List getOrderByUser(Map map);
	int getCount(String uid);
	List getDetailByOrderId(String oid);
	int getDetailCount(String oid);
}
