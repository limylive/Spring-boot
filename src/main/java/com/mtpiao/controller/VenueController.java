package com.mtpiao.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mtpiao.entity.Venue;
import com.mtpiao.service.VenueService;

@RestController
public class VenueController {
	@Autowired
	VenueService venueService;
	
	
	@RequestMapping("/allVenueCity")
	public ArrayList<Venue> allVenueCity(Model model) {
		 ArrayList<Venue> allVenueCity = venueService.queryAllVenueCity();
		model.addAttribute("allVenueCity", allVenueCity);
		return allVenueCity;
	}
	@RequestMapping("/changuan")
	public ArrayList<Venue> changuan(Model model) {
		ArrayList<Venue> allVenue = venueService.queryAllVenue();
		model.addAttribute("allVenue", allVenue);
	//	System.out.println(allVenue);
		return allVenue;
	}
	
	
}
