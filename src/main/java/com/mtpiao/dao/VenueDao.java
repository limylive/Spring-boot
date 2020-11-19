package com.mtpiao.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mtpiao.entity.Venue;

@Mapper
public interface VenueDao {
	/**
	 * 查询票务信息的城市
	 * @return
	 */
	ArrayList<Venue> queryAllVenueCity();
	
	/**
	 * 查询全部场馆信息
	 * @return
	 */
	ArrayList<Venue> queryAllVenue();
}
