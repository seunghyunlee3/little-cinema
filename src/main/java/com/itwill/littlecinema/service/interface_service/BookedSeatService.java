package com.itwill.littlecinema.service.interface_service;

import java.util.List;

import com.itwill.littlecinema.domain.BookedSeat;
import com.itwill.littlecinema.domain.Seat;
import com.itwill.littlecinema.domain.Time;

public interface BookedSeatService {
	
	//예매하면 좌석 마감
	public int add(BookedSeat bookedSeat) throws Exception;
	
	//좌석 고를 때 예매된 좌석들 보기
	public List<BookedSeat> findBookedSeatList(int timeCode) throws Exception;
	
	//좌석 고를 때 예매된 좌석들 보기
	public List<BookedSeat> findByTimeBookedSeatList(Time time) throws Exception;
	
	//전체좌석보기
	public List<Seat> findBySeatCodeList(int timeCode) throws Exception;
	
	//예매 내역 좌석들 불러오기
	public List<BookedSeat> findByTicketNo(int ticketNo) throws Exception;
}
