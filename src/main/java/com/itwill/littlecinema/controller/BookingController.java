package com.itwill.littlecinema.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.itwill.littlecinema.controller.intercepter.LoginCheck;
import com.itwill.littlecinema.domain.Ticket;
import com.itwill.littlecinema.service.interface_service.BookedSeatService;
import com.itwill.littlecinema.service.interface_service.TicketService;
import com.itwill.littlecinema.service.interface_service.TimeService;

@Controller
public class BookingController {
	
	private TimeService timeService;
	private BookedSeatService bookedSeatService;
	private TicketService ticketService;
	
	public BookingController(TimeService timeService, BookedSeatService bookedSeatService,
			TicketService ticketService) {
		this.timeService = timeService;
		this.bookedSeatService = bookedSeatService;
		this.ticketService = ticketService;
	}
	
	@LoginCheck
	@RequestMapping("/booking")
	public String start(@RequestParam(required = false) Integer timeCode, Model model) throws Exception {
		if (timeCode != null) {
			model.addAttribute("time", timeService.findTimeByTimeCode(timeCode));
		}
		return "booking";
	}
	
	@LoginCheck
	@PostMapping("/booking-seat")
	public String booking_seat(@RequestParam Integer timeCode, Model model) throws Exception  {
		model.addAttribute("seatCodeList", bookedSeatService.findBySeatCodeList(timeCode));
		model.addAttribute("bookedSeatList", bookedSeatService.findBookedSeatList(timeCode));
		model.addAttribute("timeCode", timeCode);
		return "booking-seat";
	}
	
	
	// PayController
	
	//결제 폼
	@LoginCheck
	@PostMapping(value="/pay-form")
	public String pay_form(@RequestParam Integer timeCode,
							@RequestParam Integer payCost, 
							@RequestParam List<String> seat,
							Model model) throws Exception {
		model.addAttribute("time", timeService.findTimeByTimeCode(timeCode));
		model.addAttribute("payCost", payCost);
		model.addAttribute("seatList", seat);
		return "pay-form";
	}

	//결제하기
	@LoginCheck
	@RequestMapping(value="/pay-action")
	public String pay_action(@SessionAttribute("sMemberId") String sMemberId,
							@RequestParam(required = true) Integer timeCode,
							@RequestParam(required = false) Integer payCost,
							@RequestParam List<String> seat) throws Exception {
		return "redirect:pay-info?ticketNo=" + ticketService.add(sMemberId, timeCode, payCost, seat);
	}
	
	//결제내역보기
	@LoginCheck
	@RequestMapping(value="/pay-info")
	public String paylist_action(@SessionAttribute("sMemberId") String sMemberId,
								@RequestParam int ticketNo,
								Model model) throws Exception {
		Ticket ticket = ticketService.findTicketNo(ticketNo);
		if (!sMemberId.equals(ticket.getMember().getId())) {
			return "404";
		}
		model.addAttribute("ticket", ticket);
		return "pay-info";
	}

	//TODO: 예매 취소 추가
	@LoginCheck
	@RequestMapping(value="/booking-cancle")
	public String booking_cancle(@SessionAttribute("sMemberId") String sMemberId,
								@RequestParam int ticketNo) throws Exception{
		ticketService.cancle(ticketNo);
		return "index";
	}
}