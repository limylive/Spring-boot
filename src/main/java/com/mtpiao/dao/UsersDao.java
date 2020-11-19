package com.mtpiao.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mtpiao.entity.Users;

@Mapper
public interface UsersDao {
	/**
	 * 用户登录
	 * @param users
	 * @return
	 */
	Users login(Users users);

	/**
	 * 查询一个用户
	 * @param users
	 * @return
	 */
	Users queryOneUser(Users users);

	/**
	 * 用户注册
	 * @param users
	 * @return
	 */
	int addUser(Users users);
}
