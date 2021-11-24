package com.itwill.littlecinema.service.interface_service;

import java.util.List;

import com.itwill.littlecinema.domain.Review;

public interface ReviewService {
	
	/**
	 * 리뷰 1개 정보
	 * @param reviewNo
	 * @return Review 객체 
	 */
	Review findByNo(int reviewNo) throws Exception;
	
	/**
	 * 리뷰 작성
	 * @param review
	 * @return affected row
	 */
	int add(Review review) throws Exception;
	
	/**
	 * 리뷰 수정
	 * @param review
	 * @return affected row
	 */
	int modify(Review review) throws Exception;
	
	/**
	 * 리뷰 삭제
	 * @param reviewNo
	 * @return affected row
	 */
	int remove(int reviewNo) throws Exception;
	
	/**
	 * 평점 평균 조회
	 * @param movieNo
	 * @return 평점 평균
	 */
	Double findAvgScore(int movieNo) throws Exception;
	
	/**
	 * 내 정보 리뷰내역(이승현)
	 * @param id
	 * @return 리뷰 내용
	 */
	List<Review> findMyReviews(String id) throws Exception;
}
