package com.itwill.littlecinema.repository.interface_dao;

import java.util.List;

import com.itwill.littlecinema.domain.BookedSeat;
import com.itwill.littlecinema.domain.Seat;
import com.itwill.littlecinema.domain.Time;

public interface BookedSeatDao {

	//예매하면 좌석 마감
	public int insert(BookedSeat bookedSeat) throws Exception;
	
	//좌석 고를 때 예매된 좌석들 보기
	public List<BookedSeat> selectBookedSeatList(int timeCode) throws Exception;

	//좌석 고를 때 예매된 좌석들 보기
	public List<BookedSeat> selectByTimeBookedSeatList(Time time) throws Exception;
	
	//시간별 전체좌석보기
	public List<Seat> selectBySeatCodeList(int timeCode) throws Exception;
	
	//예매 내역 좌석들 불러오기
	public List<BookedSeat> selectByTicketNo(int ticketNo) throws Exception;
	
	/**
	 * 티켓번호로 예약된 좌석들 취소
	 * 예매 취소시 사용
	 * @param ticketNo
	 * @return 취소된 행
	 * @throws Exception
	 */
	int delete(int ticketNo) throws Exception;
}
