package com.goods.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.goods.entity.User;
import com.goods.service.UserService;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/user/login.action")	
	public ModelAndView login(User user,HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/main");
		ModelAndView model2 = new ModelAndView("/login");
		User acc= userService.login(user);
		List<User> list = new ArrayList<User>();		
		if(acc!=null){
			//存session
			model.addObject("user", acc);
			return model;
		}else{
			model2.addObject("msg","用户名或密码错误！");
			return model2;
		}
		
	}
}
