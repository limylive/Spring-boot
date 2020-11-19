package com.mtpiao.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mtpiao.entity.Shopping;
import com.mtpiao.service.ShoppingService;

@Controller
public class ShoppingController {
	@Autowired
	ShoppingService shoppingService;
		@RequestMapping("/addshopping")
		public ModelAndView addshopping(Shopping shopping,int stid,int suid) {
			shopping.setSuid(suid);
			shopping.setStid(stid);
			shopping.setNumber(1);
			shoppingService.addshopping(shopping);
			return SearchShopping(suid);
			
		}
	@RequestMapping("/gowuche")
	public ModelAndView SearchShopping(int suid) {
		ModelAndView mav=new ModelAndView();
		List<Shopping> list = shoppingService.list(suid);
		mav.addObject("lists", list); 
		mav.setViewName("gowuche");
		return mav;
		
	}
	@RequestMapping("/update")
	public ModelAndView setNumber(int flag,int sid,int uid) {
		
		if(flag==1) {
		
			shoppingService.proplus(sid,uid);
		}else {
			shoppingService.prominus(sid,uid);
		}
		
		return SearchShopping(uid);
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteBySid(int sid ,int uid) {
		ModelAndView mav=new ModelAndView();
		if(shoppingService.deleteBySid(sid)) {
			return SearchShopping(uid);
		}else {
			mav.setViewName("error");
		}
			
		
		return mav;
		
	}
	
	@RequestMapping("/deleteAll")
	public ModelAndView deleteAll(int suid) {
		ModelAndView mav=new ModelAndView();
		System.out.println(suid);
		if(shoppingService.deleteAll(suid)) {
				mav.setViewName("gowuche2");
		}else {
			mav.setViewName("error");
		}
			
		
		return mav;
		
	}
}
