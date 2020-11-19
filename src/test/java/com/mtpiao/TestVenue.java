package com.mtpiao;

import java.util.ArrayList;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mtpiao.controller.TicketInfoController;
import com.mtpiao.dao.TicketInfoDao;
import com.mtpiao.dao.VenueDao;
import com.mtpiao.entity.Venue;

@SpringBootTest
class TestVenue {
	@Autowired
	TicketInfoDao ticketInfoDao;
	@Autowired
	VenueDao venueDao;
	@Autowired
	TicketInfoController ticketInfoController;
	@Test
	void contextLoads() {
		  ArrayList<Venue> queryAllVenueCity = venueDao.queryAllVenueCity();
		System.out.println(queryAllVenueCity);
}

}








