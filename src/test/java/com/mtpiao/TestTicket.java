package com.mtpiao;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mtpiao.controller.TicketInfoController;
import com.mtpiao.dao.TicketInfoDao;

@SpringBootTest
class TestTicket {
	@Autowired
	TicketInfoDao ticketInfoDao;
	@Autowired
	TicketInfoController ticketInfoController;
	@Test
	void contextLoads() {
//		ArrayList<TicketInfo> queryAllTAndVIndex = ticketInfoDao.queryTicketByCity("北京");
//		ArrayList<TicketInfo> queryAllTAndVIndex = ticketInfoDao.queryTicketByType("演唱会");
	
//		for (TicketInfo  a : queryAllTAndVIndex) {
//			System.out.println(a);
//		}
}

}








