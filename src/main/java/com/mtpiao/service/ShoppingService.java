package com.mtpiao.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mtpiao.entity.Shopping;

@Service
public interface ShoppingService {
	public boolean addshopping(Shopping shopping);
	
	public List<Shopping>list(int suid);
	
	public boolean  prominus(int sid,int suid);
	//添加商品数量
	public boolean proplus(int sid,int suid);
	
	public boolean deleteBySid(int sid);
	

	public boolean deleteAll(int suid);
	
	/**
	 * 查询购物车中是否存在该票务信息
	 * @param shopping
	 * @return
	 */
	public Shopping findInShopping(Shopping shopping) ;
	
	/**
	 * 如果购物车中已存在该票务信息  则只要修改数量即可
	 * @param shopping
	 * @return
	 */
	public int updateShoppingNum(Shopping shopping) ;
}
