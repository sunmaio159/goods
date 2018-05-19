package com.goods.service;

import java.util.List;

import com.goods.entity.Order;
import com.goods.entity.OrderName;

public interface OrderService {
	public int save(Order order);
	
	public Order selectByOrderid(String orderid);
	
	public int updateByOrderid(Order order);
	
	public List<OrderName> getorderlist(String userid);
	
	public OrderName selectOrderid(String orderid);
}
