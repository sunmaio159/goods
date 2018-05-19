package com.goods.service;

import java.util.List;

import com.goods.entity.OrderInfo;
import com.goods.entity.Orderetail;

public interface OrderetailService {
	public int saveOrderetail(Orderetail orderetail);
	
	public List<OrderInfo> getOrderetail(String orderid);
}
