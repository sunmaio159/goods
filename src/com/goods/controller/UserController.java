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
	
	@RequestMapping(value="/user/login.htm")	
	public ModelAndView login(User user,HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/index");
		ModelAndView model2 = new ModelAndView("/login");		
		User acc= userService.login(user);	
		if(acc!=null){
			//存session
			model.addObject("user", acc);
			return model;
		}else{
			model2.addObject("msg","用户名或密码错误！");
			return model2;
		}
	}
	@RequestMapping(value="/user/insert.htm")	
	public ModelAndView insert(User user,HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/login");
		int i = userService.insert(user);
		if(i!=0){
			model.addObject("msg","注册成功");
			return model;
		}else {
			return model;
		}
		
	}
	@RequestMapping(value="/user/SelectById.htm")	
	public ModelAndView SelectById(HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/updateInfo");
		String id = request.getParameter("id");
		User user = userService.SelectById(id);
		if(user!=null){
			model.addObject("user",user);
			return model;
		}
		return model;		
	}
	@RequestMapping(value="user/update.htm")	
	public ModelAndView update(User user,HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/updateInfo");		
		int i = userService.update(user);
		if(i!=0){
			model.addObject("msg","修改成功");
			return model;
		}else {
			return model;
		}		
	}
}
