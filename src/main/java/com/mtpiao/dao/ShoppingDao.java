package com.mtpiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mtpiao.entity.Shopping;

@Mapper
public interface ShoppingDao {
	public boolean addshopping(Shopping shopping) ;
	
	public List<Shopping>list(int suid);
	
	//减少商品数量
	public int prominus(int sid,int suid);
	//添加商品数量
	public int proplus(int sid ,int suid);
	
	public boolean deleteBySid(int sid );
	
	public int deleteAll(int suid);
	
	public Shopping findInShopping(Shopping shopping) ;
	
	public int updateShoppingNum(Shopping shopping) ;
}
