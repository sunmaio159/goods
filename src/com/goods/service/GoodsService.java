package com.goods.service;

import java.util.List;

import com.goods.entity.Goods;

public interface GoodsService {
	
	public int insert(Goods goods);
	
	public List<Goods> goodsList(String userid);
	
	public int updateList(Goods goods);
	
	public int deleteList(String goodsid);
	
	public Goods getgoods(String goodsid);
}
