package com.goods.dao;

import com.goods.entity.Order;

public interface OrderMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order
     *
     * @mbggenerated Tue Nov 28 14:15:10 CST 2017
     */
    int deleteByPrimaryKey(Integer orderid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order
     *
     * @mbggenerated Tue Nov 28 14:15:10 CST 2017
     */
    int insert(Order record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order
     *
     * @mbggenerated Tue Nov 28 14:15:10 CST 2017
     */
    int insertSelective(Order record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order
     *
     * @mbggenerated Tue Nov 28 14:15:10 CST 2017
     */
    Order selectByPrimaryKey(Integer orderid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order
     *
     * @mbggenerated Tue Nov 28 14:15:10 CST 2017
     */
    int updateByPrimaryKeySelective(Order record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order
     *
     * @mbggenerated Tue Nov 28 14:15:10 CST 2017
     */
    int updateByPrimaryKey(Order record);
}