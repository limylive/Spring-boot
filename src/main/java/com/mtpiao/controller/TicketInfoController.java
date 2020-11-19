package com.mtpiao.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.mtpiao.entity.TicketInfo;
import com.mtpiao.service.serviceimpl.TicketInfoServiceImpl;

@RestController
@SessionAttributes("allTAndVIndex")
public class TicketInfoController {
	@Autowired
	TicketInfoServiceImpl ticketInfoServiceImpl;
	
	
	
	@RequestMapping("/index")
	public ArrayList<TicketInfo> index(Model model) {
		ArrayList<TicketInfo> allTAndVIndex = ticketInfoServiceImpl.queryAllTAndVIndex();
		model.addAttribute("allTAndVIndex", allTAndVIndex);
		return allTAndVIndex;
	}
	@RequestMapping("/yanchanghui")
	public ModelAndView yanchanghui(ModelAndView mv) {
		ArrayList<TicketInfo> allTAndVIndex = ticketInfoServiceImpl.queryAllTAndVIndex();
		mv.addObject("allTAndVIndex", allTAndVIndex);
		mv.setViewName("yanchanghui");
		return mv;
	}
	@RequestMapping("/queryTicketByType")
	public ModelAndView queryTicketByType(String ttype,ModelAndView mv) {
		ArrayList<TicketInfo> typeTicketInfo = ticketInfoServiceImpl.queryTicketByType(ttype);
		//System.out.println(typeTicketInfo);
		mv.addObject("allTAndVIndex", typeTicketInfo);
		mv.setViewName("yanchanghui");
		return mv;
	}
	@RequestMapping("/queryTicketByCity")
	public ModelAndView queryTicketByCity(String vcity,ModelAndView mv) {
		ArrayList<TicketInfo> cityTicketInfo = ticketInfoServiceImpl.queryTicketByCity(vcity);
		mv.addObject("allTAndVIndex", cityTicketInfo);
		mv.setViewName("yanchanghui");
		return mv;
	}
	@RequestMapping("/allType")
	public ArrayList<TicketInfo> allType(Model model) {
		 ArrayList<TicketInfo> allType = ticketInfoServiceImpl.queryAllType();
		model.addAttribute("allType", allType);
		return allType;
	}
	@RequestMapping("/findById")
	public ModelAndView findById(int tid) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("tik",ticketInfoServiceImpl.findById(tid));
		mav.setViewName("goumai");
		return mav;
	}
}
