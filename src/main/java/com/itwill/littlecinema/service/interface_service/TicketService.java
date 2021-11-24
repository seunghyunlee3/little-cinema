package com.itwill.littlecinema.service.interface_service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.itwill.littlecinema.domain.Ticket;

public interface TicketService {
	/**
	 * 예매하기
	 * @param 회원아이디, 시간, 금액, 좌석코드 목록 
	 * @return affected row
	 * @throws Exception
	 */
	@Transactional
	int add(String memberId, int timeCode, int payCost, List<String> seatCodeList) throws Exception;
	
	/**
	 * 예매 취소 (ticket_status 변경 및 해당 좌석예약 내역 제거)
	 * @param ticket
	 * @return
	 * @throws Exception
	 */
	@Transactional
	int cancle(int ticketNo) throws Exception;
	
	/**
	 * 예매 내역 조회
	 * @param 회원 id
	 * @return	해당 id의 예매목록(취소내역 포함)
	 * @throws Exception
	 */
	List<Ticket> findTicketList(String id) throws Exception;
	
	
	/**
	 * 결제 후 예매 내역 조회
	 * @param ticketNo
	 * @return ticketNo의 예매 목록
	 * @throws Exception
	 */
	Ticket findTicketNo(int ticketNo) throws Exception;
}
