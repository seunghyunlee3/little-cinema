package com.itwill.littlecinema.repository.interface_dao;

import java.util.List;

import com.itwill.littlecinema.domain.Review;

public interface ReviewDao {
	
	/**
	 * 리뷰 1개 정보
	 * @param reviewNo
	 * @return Review 객체 
	 */
	Review selectByNo(int reviewNo);
	
	/**
	 * 리뷰 작성
	 * @param review
	 * @return affected row
	 */
	int insert(Review review);
	
	/**
	 * 리뷰 수정
	 * @param review
	 * @return affected row
	 */
	int update(Review review);
	
	/**
	 * 리뷰 삭제
	 * @param reviewNo
	 * @return affected row
	 */
	int delete(int reviewNo);
	
	/**
	 * 평점 평균 조회
	 * @param movieNo
	 * @return 평점 평균
	 */
	Double selectAvgScore(int movieNo);
	
	
	/**
	 * 내 정보 리뷰 내용(이승현)
	 * @param id
	 * @return 리뷰 갯수
	 */
	List<Review> selectById(String id);
}
