package com.mtpiao.service.serviceimpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mtpiao.dao.VenueDao;
import com.mtpiao.entity.Venue;
import com.mtpiao.service.VenueService;

@Service
public class VenueServiceImpl implements VenueService {
	@Autowired
	VenueDao venueDao;

	@Override
	public ArrayList<Venue> queryAllVenueCity() {
		ArrayList<Venue> AllVenueCity = venueDao.queryAllVenueCity();
		return AllVenueCity;
	}

	@Override
	public ArrayList<Venue> queryAllVenue() {
		return venueDao.queryAllVenue();
	}

}
