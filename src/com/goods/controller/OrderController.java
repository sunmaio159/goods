package com.goods.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.goods.entity.Cutomer;
import com.goods.entity.Goods;
import com.goods.entity.Order;
import com.goods.entity.OrderInfo;
import com.goods.entity.OrderName;
import com.goods.entity.Orderetail;
import com.goods.entity.OrderetailList;
import com.goods.service.CutomerService;
import com.goods.service.GoodsService;
import com.goods.service.OrderService;
import com.goods.service.OrderetailService;

@Controller
public class OrderController {
	@Resource
	private GoodsService goodsservice;
	@Resource
	private CutomerService cutomerService;
	@Resource
	private OrderService orderservice;
	@Resource
	private OrderetailService orderetailservice;
	
	@RequestMapping(value="/order/order.htm")	
	public ModelAndView order(HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView model = new ModelAndView("/addorder");
		String userid = request.getParameter("id");	
		String bh=dateToStamp();
		String time = time();
		List<Cutomer> list = new ArrayList<Cutomer>();
		list = cutomerService.CutomerList(userid);
		model.addObject("cutomer", list);
		model.addObject("userid", userid);
		model.addObject("orderid", bh);
		model.addObject("time", time);
		return model;		
	}
	@SuppressWarnings("null")
	@RequestMapping(value="/order/saveorder.htm")	
	public ModelAndView saveorder(Order order,HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView model = new ModelAndView("/orderList");
		String bh=order.getOrderid();
		Order order1 = new Order();
		order1 = orderservice.selectByOrderid(bh);
		//List<Cutomer> list = new ArrayList<Cutomer>();
		String userid = request.getParameter("id");	
		List<OrderName> list = new ArrayList<OrderName>();
		
		if(order1==null){
			orderservice.save(order);										
			/*list =cutomerService.selectCutomer(order.getCutomerid().toString());
			model.addObject("cutomer",list);
			model.addObject("orderid",order.getOrderid());
			model.addObject("time",order.getTimedate());
			model.addObject("userid", order.getUserid());*/	
			model.addObject("list", list);
			model.addObject("msg","添加成功");
			return model;
		}else{
			/*list = cutomerService.selectCutomer(order1.getCutomerid().toString());
			model.addObject("cutomer",list);
			model.addObject("orderid",order1.getOrderid());
			model.addObject("time",order1.getTimedate());
			model.addObject("userid", order1.getUserid());*/
			orderservice.updateByOrderid(order1);			
			list = orderservice.getorderlist(userid);
			model.addObject("msg","添加成功");
			return model;	
		}			
	}
	@RequestMapping(value="/order/orderaddgoods.htm")	
	public ModelAndView orderaddgoods(HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView model = new ModelAndView("/ordergoods");
		String userid = request.getParameter("id");			
		model.addObject("userid", userid);
		return model;		
	}
	public static String dateToStamp(){
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
		String date = df.format(new Date());
		return date;
    }
	public static String time(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		String date = df.format(new Date());
		return date;
    }
	@RequestMapping(value="/order/addGoodsToOrder.htm")	
	public ModelAndView addGoodsToOrder(HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView model = new ModelAndView("/addorder");			 	
	 	String goodslist = request.getParameter("goodslist");
		String[] map =goodslist.split(",");
		List<Goods> list = new ArrayList<Goods>();
		for(int i=0;i<map.length;i++){
			Goods goods = goodsservice.getgoods(map[i]);
			list.add(goods);
		}
		model.addObject("goodslist", list);
		return model;		
	}
	@RequestMapping(value="/order/saveOrderEtail.htm")	
	public ModelAndView saveOrderEtail(OrderetailList orderetaillist,HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView model = new ModelAndView("/orderList");	
		String userid = request.getParameter("id");	
		List<OrderName> list = new ArrayList<OrderName>();
		
		for(Orderetail orderetail :orderetaillist.getOrderetaillist()){
			orderetailservice.saveOrderetail(orderetail);
		}
		list = orderservice.getorderlist(userid);
		model.addObject("msg","添加成功");
		model.addObject("list",list);
		return model;		
	}
	@RequestMapping(value="/order/orderList.htm")	
	public ModelAndView orderList(HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView model = new ModelAndView("/orderList");
		String userid = request.getParameter("id");	
		List<OrderName> list = new ArrayList<OrderName>();
		list = orderservice.getorderlist(userid);
		model.addObject("list", list);		
		return model;		
	}
	@RequestMapping(value="/order/orderInfo.htm")	
	public ModelAndView orderInfo(HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView model = new ModelAndView("/OrderInfo");
		String orderid = request.getParameter("orderid");
		List<OrderInfo> list = new ArrayList<OrderInfo>();
		OrderName order = new OrderName();
		order = orderservice.selectOrderid(orderid);
		list=orderetailservice.getOrderetail(orderid);
		for(int i=0;i<list.size();i++){
			Integer n = list.get(i).getNum();
			Float danjia = list.get(i).getPrice();
			Float money = n*danjia;
			list.get(i).setMoney(money);
		}
		//list = orderservice.getorderlist(userid);
		model.addObject("order", order);
		model.addObject("list", list);
		return model;		
	}
}
