package com.mtpiao.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.mtpiao.entity.Users;
import com.mtpiao.service.UsersService;

@RestController
@SessionAttributes("user")
public class UsersController {
	@Autowired
	UsersService usersService;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Users users ,Map<String, Users> m) {
		Users login = usersService.login(users);
		if (login == null) {
			return "false";
		} else {
			m.put("user", login);
			return "true";
		}
	}
	//退出登录
	@RequestMapping(value = "/exit")
	public ModelAndView exit(HttpSession session,SessionStatus sessionStatus ,ModelAndView mv){
	//	System.out.println("点击了退出登录");
        session.removeAttribute("user");//我这里是先取出httpsession中的user属性
        session.invalidate();  //然后是让httpsession失效
        sessionStatus.setComplete();//最后是调用sessionStatus方法
        mv.setViewName("denglu");
        return mv;
    }
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(Users users ) {
		int reg = usersService.addUser(users);
		if (reg == 0) {
			return "false";
		} else {
			return "true";
		}
	}
}
