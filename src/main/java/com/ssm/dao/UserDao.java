package com.ssm.dao;

import java.util.List;

import com.ssm.entity.User;

public interface UserDao {
	/**
	 * 通过ID查询用户
	 * 
	 * @param id
	 * @return
	 */
	User queryByName(long id);

	/**
	 * 查询所有用户
	 * 
	 * @param offset 查询起始位置
	 * @param limit 查询条数
	 * @return
	 */
	List<User> queryAll(/* @Param("offset") int offset, @Param("limit") int limit */);

	/**
	 * 减少馆藏数量
	 * 
	 * @param bookId
	 * @return 如果影响行数等于>1，表示更新的记录行数
	 */
	/* int reduceNumber(long bookId); */
}
