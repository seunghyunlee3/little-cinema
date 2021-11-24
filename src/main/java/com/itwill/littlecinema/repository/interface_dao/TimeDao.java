package com.itwill.littlecinema.repository.interface_dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.itwill.littlecinema.domain.Time;

public interface TimeDao {
	/**
	 * 전체 영화 상영날짜 목록 조회
	 * @return 상영날짜 리스트
	 */
	List<Date> selectAllDate();
	
	/**
	 * 	영화별 상영날짜 목록 조회
	 * @param movieNo
	 * @return 상영날짜 리스트
	 */
	List<Date> selectDateByNo(int movieNo);
	
	/**
	 * 영화별 상영날짜 목록 조회
	 * @param movieNo
	 * @return 영화시간 리스트
	 */
	List<Time> selectTimeByNo(int movieNo);
	
	/**
	 * 영화 번호, 상영날짜로 상영시간 목록 조회
	 * @param Map<String, Object>
	 * 			{"movieDate", "2021-10-21"}
	 * 			{"movieNo", 2}
	 * @return 타임테이블
	 */
	List<Time> selectTimeTableByNoDate(Map<String, Object> movieNoDate);

	/**
	 * 상영날짜로 영화 + 상영시간 목록 조회
	 * @param movieDate
	 * @return 상영시간 리스트
	 */
	List<Time> selectScreenTimeByDate(String movieDate);
	
	//==================================== TESTING ====================================
	
	/**
	 * 영화 상세 정보에서 상영 날짜 선택시 JSON에 넣을 데이터 조회
	 * @author 유재협
	 * @param movieNo
	 * @param movieDate
	 * @return 영화(movieNo)가 상영하는 날(movieDate)의 상영시간들(타임테이블)
	 */
	List<Time> selectScreenTimeByNoDate(Map<String, Object> movieNoDate);
	
	
	/**
	 * 타임코드로 타임조회
	 * @param timeCode
	 * @return 타임
	 */
	Time selectTimeByTimeCode(int timeCode);
}
