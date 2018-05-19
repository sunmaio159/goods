package com.goods.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.dao.GoodsMapper;
import com.goods.entity.Goods;
import com.goods.service.GoodsService;
@Service("goodsService")
public class GoodsServiceImp implements GoodsService {
	@Autowired
	private GoodsMapper goodsmapper;
	public int insert(Goods goods) {		
		return goodsmapper.insert(goods);
	}
	public List<Goods> goodsList(String userid) {
		return goodsmapper.goodList(userid);
	}
	public int updateList(Goods goods) {
		return goodsmapper.updateList(goods);
	}
	public int deleteList(String goodsid) {		
		return goodsmapper.deleteList(goodsid);
	}
	public Goods getgoods(String goodsid) {
		return goodsmapper.getgoods(goodsid);
	}

}
