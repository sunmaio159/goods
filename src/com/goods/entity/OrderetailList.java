package com.goods.entity;

import java.util.List;

public class OrderetailList {
	private List<Orderetail> Orderetaillist;

	public List<Orderetail> getOrderetaillist() {
		return Orderetaillist;
	}

	public void setOrderetaillist(List<Orderetail> orderetaillist) {
		Orderetaillist = orderetaillist;
	}

	public OrderetailList(List<Orderetail> orderetaillist) {
		super();
		Orderetaillist = orderetaillist;
	}
	public OrderetailList(){
		super();
	}
}
