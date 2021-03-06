package com.goods.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.entity.User;
import com.goods.service.UserService;
import com.goods.dao.UserMapper;

@Service("userService")
public class UserServiceImp implements UserService {
	@Autowired
	private UserMapper userMapper;
	public User login(User user) {		
		return userMapper.login(user); 
	}
	public int insert(User user) {		
		return userMapper.insert(user);
	}
	public User SelectById(String id) {		
		return userMapper.SelectById(id);
	}
	public int update(User user) {
		return userMapper.update(user);
	}
}
