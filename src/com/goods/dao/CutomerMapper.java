package com.goods.dao;

import java.util.List;

import com.goods.entity.Cutomer;

public interface CutomerMapper {

	int deleteByPrimaryKey(Integer cutomerid);

	int insert(Cutomer record);

	int insertSelective(Cutomer record);

	Cutomer selectByPrimaryKey(Integer cutomerid);

	int updateByPrimaryKeySelective(Cutomer record);

	int updateByPrimaryKey(Cutomer record);
	
	public int addCutomer(Cutomer cutomer);
	
	public List<Cutomer> CutomerList(String userid);
	
	public int update(Cutomer cutomer);

	public void deletecutomer(String cutomerid);
	
	public List<Cutomer> selectCutomer(String cutomerid);
}