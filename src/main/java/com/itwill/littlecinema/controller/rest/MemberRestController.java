package com.itwill.littlecinema.controller.rest;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.itwill.littlecinema.service.interface_service.BookedSeatService;
import com.itwill.littlecinema.service.interface_service.TicketService;

@RestController
public class MemberRestController {
	
	private TicketService ticketService;
	private BookedSeatService bookedSeatService;
	
	public MemberRestController(TicketService ticketService, BookedSeatService bookedSeatService) {
		this.ticketService = ticketService;
		this.bookedSeatService = bookedSeatService;
	}
	
	@RequestMapping(value = "ticketJSON", produces = "application/json;charset=utf-8")
	public Map<String, Object> ticketJSON(@RequestParam int ticketNo) throws Exception {
		//JSON으로 만들어줄 Map객체
		Map<String, Object> jsonMap = new HashMap<>();
		
		jsonMap.put("ticket", ticketService.findTicketNo(ticketNo));
		jsonMap.put("seatList", bookedSeatService.findByTicketNo(ticketNo));
		
		return jsonMap;
	}
	
	@RequestMapping(value = "ticketDelete", produces = "application/json;charset=utf-8")
	public Map<String, Object> ticketDelete(@SessionAttribute("sMemberId") String sMemberId, @RequestParam int ticketNo) throws Exception {
		Map<String, Object> jsonMap = new HashMap<>();
		ticketService.cancle(ticketNo);
		jsonMap.put("ticketList", ticketService.findTicketList(sMemberId));
		
		return jsonMap;
	}

}
