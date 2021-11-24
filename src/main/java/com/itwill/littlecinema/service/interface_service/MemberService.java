package com.itwill.littlecinema.service.interface_service;

import com.itwill.littlecinema.domain.Member;

public interface MemberService {

	//회원가입
	int add(Member member) throws Exception;
	
	//로그인
	int login(String id, String password) throws Exception;
	
	//회원 정보 보기
	Member findMember(String id) throws Exception;
	
	//회원 정보 수정
	int modify(Member member) throws Exception;
	
	//회원 탈퇴
	int remove(String id) throws Exception;
	
	//아이디 중복체크
	int isDuplicateMemberId(String id) throws Exception;
	
	//비밀번호변경
	public int updateMemberPassword(String id, String password) throws Exception;
}
