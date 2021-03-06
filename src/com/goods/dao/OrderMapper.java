package com.goods.dao;

import java.util.List;

import com.goods.entity.Order;
import com.goods.entity.OrderName;

public interface OrderMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table order
	 * @mbggenerated  Thu Dec 07 09:15:48 CST 2017
	 */
	int deleteByPrimaryKey(String orderid);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table order
	 * @mbggenerated  Thu Dec 07 09:15:48 CST 2017
	 */
	int insert(Order record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table order
	 * @mbggenerated  Thu Dec 07 09:15:48 CST 2017
	 */
	int insertSelective(Order record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table order
	 * @mbggenerated  Thu Dec 07 09:15:48 CST 2017
	 */
	Order selectByPrimaryKey(String orderid);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table order
	 * @mbggenerated  Thu Dec 07 09:15:48 CST 2017
	 */
	int updateByPrimaryKeySelective(Order record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table order
	 * @mbggenerated  Thu Dec 07 09:15:48 CST 2017
	 */
	int updateByPrimaryKey(Order record);
	
	public int save(Order record);
	
	public Order selectByOrderid(String orderid);
	
	public int updateByOrderid(Order record);
	
	public List<OrderName> getorderlist(String userid);
	
	public OrderName selectOrderid(String orderid);
}