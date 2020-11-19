package com.mtpiao.service.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mtpiao.dao.UsersDao;
import com.mtpiao.entity.Users;
import com.mtpiao.service.UsersService;

@Service
public class UsersServiceImpl implements UsersService {
	@Autowired
	UsersDao userDao;

	@Override
	public Users login(Users users) {
		Users queryUser = queryOneUser(users);
		// 判断users表中是否有该用户，为null说明不存在
		if (queryUser == null) {
			return null;
		}
		Users login = userDao.login(users);
		// 判断该用户的用户名密码是否正确，为null说明输入错误
		if (login == null) {
			return null;
		}
		return login;// 最后返回该用户的信息
	}

	@Override
	public Users queryOneUser(Users users) {
		Users user = userDao.queryOneUser(users);
		return user;
	}

	@Override // 用户注册
	public int addUser(Users users) {
		Users queryUser = queryOneUser(users);
		// 判断users表中是否有该用户，为不为null说明存在，不能注册
		if (queryUser != null) {
			return 0;
		}
		return userDao.addUser(users);

	}

}
