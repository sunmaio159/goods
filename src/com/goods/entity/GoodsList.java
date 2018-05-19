package com.goods.entity;

import java.util.List;

public class GoodsList {
	private List<Goods> goodslist;

	public List<Goods> getGoodslist() {
		return goodslist;
	}

	public void setGoodslist(List<Goods> goodslist) {
		this.goodslist = goodslist;
	}
	public GoodsList(){
		super();
		}
	public GoodsList(List<Goods> goodslist){
		super();
		this.goodslist=goodslist;
	}
}
