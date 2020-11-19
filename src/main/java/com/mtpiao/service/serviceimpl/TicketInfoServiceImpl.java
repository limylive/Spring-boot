package com.mtpiao.service.serviceimpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mtpiao.dao.TicketInfoDao;
import com.mtpiao.entity.TicketInfo;
import com.mtpiao.service.TicketInfoService;

@Service
public class TicketInfoServiceImpl implements TicketInfoService{
	@Autowired
	TicketInfoDao ticketInfoDao;
	@Override
	public ArrayList<TicketInfo> queryAllTAndVIndex() {
		ArrayList<TicketInfo> allTAndVIndex = ticketInfoDao.queryAllTAndVIndex();
		//System.out.println("调用数据库进行了一次查询！");
		return allTAndVIndex;
	}
	@Override
	public ArrayList<TicketInfo> queryTicketByCity(String vcity) {
		return ticketInfoDao.queryTicketByCity(vcity);
	}
	@Override
	public ArrayList<TicketInfo> queryTicketByType(String ttype) {
		return ticketInfoDao.queryTicketByType(ttype);
	}
	@Override
	public ArrayList<TicketInfo> queryAllType() {
		return ticketInfoDao.queryAllType();
	}
	@Override
	public TicketInfo findById(int tid) {
		return ticketInfoDao.findById(tid);
	}

}
