package com.mtpiao.service;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.mtpiao.entity.TicketInfo;

@Service
public interface TicketInfoService {
	/**
	 * 查询全部票务信息以及对应的场馆信息
	 * @return
	 */
	ArrayList<TicketInfo> queryAllTAndVIndex();
	
	
	/**
	 * 根据城市查询票务信息
	 * @param tcity
	 * @return
	 */
	ArrayList<TicketInfo> queryTicketByCity(String vcity);
	/**
	 * 根据类型查询票务信息
	 * @param ttype
	 * @return
	 */
	ArrayList<TicketInfo> queryTicketByType(String ttype);
	
	/**
	 * 查询所有票的类型有哪些
	 * @return
	 */
	ArrayList<TicketInfo> queryAllType();


	public TicketInfo findById(int tid);
	
	
}




