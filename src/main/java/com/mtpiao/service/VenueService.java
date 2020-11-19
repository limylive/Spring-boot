package com.mtpiao.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.mtpiao.entity.Venue;

@Service
public interface VenueService {
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
