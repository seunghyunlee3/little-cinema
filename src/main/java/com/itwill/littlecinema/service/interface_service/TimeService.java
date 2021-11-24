package com.itwill.littlecinema.service.interface_service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.itwill.littlecinema.domain.Time;
import com.itwill.littlecinema.domain.TimeTableJsonObject;

public interface TimeService {

	/**
	 * 전체 영화 상영날짜 목록 조회
	 * @return 상영날짜 리스트
	 */
	List<Date> findAllDate() throws Exception;

	/**
	 * 영화별 상영날짜 목록 조회
	 * @param movieNo
	 * @return 상영날짜 리스트
	 */
	List<Date> findDateByNo(int movieNo) throws Exception;
	
	/**
	 * 영화별 상영날짜 목록 조회
	 * @param movieNo
	 * @return 영화시간 리스트
	 */
	List<Time> findMovieTimeList(int movieNo) throws Exception;
	
	/**
	 * 영화 번호, 상영날짜로 타임테이블 조회
	 * @param Map<String, Object>
	 * 			{"movieDate", "2021-10-21"}
	 * 			{"movieNo", 2}
	 * @return 타임테이블
	 */
	List<Time> findTimeTableByNoDate(Map<String, Object> movieNoDate) throws Exception;

	/**
	 * 상영날짜로 영화 + 상영시간 목록 조회
	 * @param movieDate
	 * @return 상영시간 리스트
	 */
	List<Time> findScreenTimeByDate(String movieDate) throws Exception;
	
	//==================================== TESTING ====================================
	
	/**
	 * 영화 상세 정보에서 상영 날짜 선택시 뽑히는 JSON Object
	 * @author 유재협
	 * @param movieNo
	 * @param movieDate
	 * @return 영화(movieNo)가 상영하는 날(movieDate)의 상영시간들(타임테이블)
	 */
	List<TimeTableJsonObject> findTimeTable(int movieNo, String movieDate) throws Exception;
	
	/**
	 * 타임코드로 타임 반환
	 * @param timeCode
	 * @return Time
	 * @throws Exception
	 */
	Time findTimeByTimeCode(int timeCode) throws Exception;
	
}