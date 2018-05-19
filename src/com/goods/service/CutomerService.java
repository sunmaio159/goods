package com.goods.service;

import java.util.List;

import com.goods.entity.Cutomer;

public interface CutomerService {
	public int addCutomer(Cutomer cutomer);
	
	public List<Cutomer> CutomerList(String userid);
	
	public int update(Cutomer cutomer);

	public void deletecutomer(String cutomerid);
	
	public List<Cutomer> selectCutomer(String cutomerid);
		
}
