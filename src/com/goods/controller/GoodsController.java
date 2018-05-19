package com.goods.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.goods.entity.Goods;
import com.goods.entity.GoodsList;
import com.goods.service.GoodsService;

@Controller
public class GoodsController {
	@Resource
	private GoodsService goodsservice;
	@RequestMapping(value="/goods/addgoods.htm")	
	public ModelAndView addgoods(Goods goods,HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/addgoods");
		int i = goodsservice.insert(goods);		
		if(i!=0){
			model.addObject("msg","添加成功");
			model.addObject("goods", goods);
			return model;
		}else {
			return model;
		}		
	}
	@RequestMapping(value="/goods/add.htm")	
	public ModelAndView add(HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/addgoods");
		String userid = request.getParameter("id");
		model.addObject("userid", userid);
		return model;		
	}
	@RequestMapping(value="/goods/updategoods.htm")	
	public ModelAndView updategoods(Goods goods,HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/addgoods");
		int i = goodsservice.insert(goods);		
		if(i!=0){
			model.addObject("msg","添加成功");
			model.addObject("goods", goods);
			return model;
		}else {
			return model;
		}		
	}
	@RequestMapping(value="/goods/list.htm")	
	public ModelAndView list(HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/goodsList");
		String userid = request.getParameter("id");
		List<Goods> list = new ArrayList<Goods>();
		list = goodsservice.goodsList(userid);
		model.addObject("list",list);
		return model;		
	}
	@RequestMapping(value="/goods/update.htm")	
	public ModelAndView update(GoodsList goodslist,HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/goodsList");
		for(Goods goods :goodslist.getGoodslist()){
			goodsservice.updateList(goods);
		}
		String userid = request.getParameter("id");
		List<Goods> list = new ArrayList<Goods>();
		list = goodsservice.goodsList(userid);
		model.addObject("list",list);
		return model;		
	}
	@RequestMapping(value="/goods/deletelist.htm")	
	public ModelAndView deletelist(HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/goodsList");
		String checboxlist = request.getParameter("list");
		String[] map =checboxlist.split(",");
		for(int i=0;i<map.length;i++){
			goodsservice.deleteList(map[i]);
		}
		String userid = request.getParameter("id");		
		List<Goods> list = new ArrayList<Goods>();
		list = goodsservice.goodsList(userid);
		model.addObject("list",list);
		return model;		
	}
}
