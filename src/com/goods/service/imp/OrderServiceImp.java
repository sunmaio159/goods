package com.goods.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.dao.OrderMapper;
import com.goods.entity.Order;
import com.goods.entity.OrderName;
import com.goods.service.OrderService;

@Service("orderservice")
public class OrderServiceImp implements OrderService {
	@Autowired
	private OrderMapper ordermapper;
	
	public int save(Order order){		
		return ordermapper.save(order);
	}

	public Order selectByOrderid(String orderid) {
		return ordermapper.selectByOrderid(orderid);
	}

	public int updateByOrderid(Order order) {	
		return ordermapper.updateByOrderid(order);
	}

	public List<OrderName> getorderlist(String userid) {		
		return ordermapper.getorderlist(userid);
	}

	public OrderName selectOrderid(String orderid) {		
		return ordermapper.selectOrderid(orderid);
	}
}
