package com.mtpiao.service;

import org.springframework.stereotype.Service;

import com.mtpiao.entity.Users;

@Service
public interface UsersService {
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
