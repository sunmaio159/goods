package com.goods.dao;

import com.goods.entity.User;

public interface UserMapper {

	int deleteByPrimaryKey(Integer id);

	int insert(User record);

	int insertSelective(User record);

	User selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKey(User record);
	
	/**
	 * µÇÂ¼
	 */
	public User login(User user);
	/**
	 * Í¨¹ýid²éÑ¯user
	 * @param id
	 * @return User
	 */
	public User SelectById(String id);

	public int update(User user);
}