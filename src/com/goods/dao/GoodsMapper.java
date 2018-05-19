package com.goods.dao;

import java.util.List;

import com.goods.entity.Goods;
import com.goods.entity.GoodsList;

public interface GoodsMapper {

	public int deleteByPrimaryKey(Integer goodsid);

	public int insert(Goods record);

	public int insertSelective(Goods record);

	public Goods selectByPrimaryKey(Integer goodsid);

	public int updateByPrimaryKeySelective(Goods record);

	public int updateByPrimaryKey(Goods record);
	
	public int addgoods(Goods goods);
	
	public List<Goods> goodList(String userid);

	public int updateList(Goods goods);
	
	public int deleteList(String goodsid);
	
	public Goods getgoods(String goodsid);
}