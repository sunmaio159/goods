package com.goods.dwr;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;

import com.goods.entity.Goods;


@Qualifier
public interface DwrOrderService {
	public String[] getinfo(String cutomerid);
	
	public String getgoods(String userid);
	
	public List<Goods> getgoodsinfo(String goodsids);
}
