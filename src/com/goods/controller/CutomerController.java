package com.goods.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.goods.entity.Cutomer;
import com.goods.entity.CutomerList;
import com.goods.entity.Goods;
import com.goods.service.CutomerService;

@Controller
public class CutomerController {
	@Resource
	private CutomerService cutomerService;
	
	@RequestMapping(value="/cutomer/userinfo.htm")	
	public ModelAndView userinfo(HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/addcutomer");
		String userid = request.getParameter("id");
		model.addObject("userid", userid);
		return model;		
	}
	@RequestMapping(value="/cutomer/addcutomer.htm")	
	public ModelAndView addcutomer(Cutomer cutomer,HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/addcutomer");
		int count = cutomerService.addCutomer(cutomer);
		String userid = request.getParameter("id");
		model.addObject("userid", userid);
		if(count!=0){
			model.addObject("msg","添加成功");
			model.addObject("cutomer", cutomer);
			return model;
		}else {
			model.addObject("msg","添加失败");
			return model;
		}		
	}
	@RequestMapping(value="/cutomer/cutomerList.htm")	
	public ModelAndView cutomerList(HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/cutomerList");
		String userid = request.getParameter("id");
		List<Cutomer> list = new ArrayList<Cutomer>();
		list = cutomerService.CutomerList(userid);
		model.addObject("list", list);
		return model;		
	}
	@RequestMapping(value="/cutomer/update.htm")	
	public ModelAndView update(CutomerList cutomerlist,HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/cutomerList");
		for(Cutomer cutomer :cutomerlist.getCutomerlist()){
			cutomerService.update(cutomer);
		}
		String userid = request.getParameter("id");
		List<Cutomer> list = new ArrayList<Cutomer>();
		list = cutomerService.CutomerList(userid);
		model.addObject("list",list);
		return model;		
	}
	@RequestMapping(value="/cutomer/cutomerdelete.htm")	
	public ModelAndView cutomerdelete(CutomerList cutomerlist,HttpServletRequest request,HttpSession session){
		ModelAndView model = new ModelAndView("/cutomerList");
		String idlist = request.getParameter("cutomerid");
		String[] map =idlist.split(",");
		for(int i=0;i<map.length;i++){
			cutomerService.deletecutomer(map[i]);
		}
		String userid = request.getParameter("id");
		List<Cutomer> list = new ArrayList<Cutomer>();
		list = cutomerService.CutomerList(userid);
		model.addObject("list",list);
		return model;		
	}
}
