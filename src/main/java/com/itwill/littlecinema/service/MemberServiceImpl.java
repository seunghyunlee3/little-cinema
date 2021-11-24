package com.itwill.littlecinema.service;

import org.springframework.stereotype.Service;

import com.itwill.littlecinema.domain.Member;
import com.itwill.littlecinema.repository.interface_dao.MemberDao;
import com.itwill.littlecinema.service.interface_service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	
	private MemberDao memberDao;
	
	public MemberServiceImpl(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	//회원가입
	@Override
	public int add(Member member) throws Exception {
			int insertRowCount = memberDao.insert(member);
			return insertRowCount;
	}

	//로그인
	@Override
	public int login(String id, String password) throws Exception {
		int result = -1;
		Member member = memberDao.select(id);
		if(member==null) {
			result = 0; //아이디 존재 안함
		} else { 
			if(member.getPassword().equals(password)) {
				result = 2; //로그인 성공
			} else {
				result = 1; //패스워드 일치x
			}
		}
		return result;
	}

	//회원 정보 보기
	@Override
	public Member findMember(String id) throws Exception {
		Member member = memberDao.select(id);
		return member;
	}

	//회원 정보 수정
	@Override
	public int modify(Member member) throws Exception {
		return memberDao.update(member);
	}

	//회원 탈퇴
	@Override
	public int remove(String id) throws Exception {
		return memberDao.delete(id);
	}

	//아이디 중복체크
	@Override
	public int isDuplicateMemberId(String id) throws Exception {
		int cnt = memberDao.existedMember(id);
		return cnt;
	}

	@Override
	public int updateMemberPassword(String id, String password) throws Exception {
		return memberDao.updateMemberPassword(id, password);
	}


}
