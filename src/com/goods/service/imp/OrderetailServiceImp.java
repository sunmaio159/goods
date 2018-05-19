package com.goods.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.dao.OrderetailMapper;
import com.goods.entity.OrderInfo;
import com.goods.entity.Orderetail;
import com.goods.service.OrderetailService;
@Service("orderetailService")
public class OrderetailServiceImp implements OrderetailService {
	@Autowired
	private OrderetailMapper orderetailmapper;
	public int saveOrderetail(Orderetail orderetail) {		
		return orderetailmapper.saveOrderetail(orderetail);
	}
	public List<OrderInfo> getOrderetail(String orderid) {
		// TODO Auto-generated method stub
		return orderetailmapper.getOrderetail(orderid);
	}

}
