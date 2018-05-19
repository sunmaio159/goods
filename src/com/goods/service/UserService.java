package com.goods.service;

import com.goods.entity.User;

public interface UserService {
	public User login(User user);
	public int insert(User user);
	public User SelectById(String id);
	public int update(User user);
}
