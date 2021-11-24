package com.itwill.littlecinema.service.interface_service;

import java.util.List;

import com.itwill.littlecinema.domain.Movie;

public interface MovieService {
	/**
	 * 영화 상세정보 및 해당 리뷰 목록 조회
	 * @param movieNo
	 * @return 영화 + 리뷰 리스트
	 */
	Movie findDetailByNo(int movieNo) throws Exception;
	
	/**
	 * 상영 중인 영화 목록 조회
	 * @return 영화 리스트
	 */
	List<Movie> findPlayingList() throws Exception;

	/**
	 * 상영 예정 영화 목록 조회
	 * @return 영화 리스트
	 */
	List<Movie> findScheduledList() throws Exception;
}
