package com.ssm.dao;

import com.ssm.entity.User;
import com.ssm.entity.UserWithBLOBs;

public interface UserMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated
	 */
	int insert(User record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated
	 */
	int insertSelective(User record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated
	 */
	User selectByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated
	 */
	int updateByPrimaryKeySelective(User record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated
	 */
	int updateByPrimaryKey(User record);
}