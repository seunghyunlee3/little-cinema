package com.itwill.littlecinema.repository;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwill.littlecinema.domain.Member;
import com.itwill.littlecinema.repository.interface_dao.MemberDao;

@Repository
public class MemberDaoImpl implements MemberDao {

	private static final String NAMESPACE = "mapper.MemberMapper.";
	private SqlSession sqlSession;

	public MemberDaoImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	// 회원가입
	@Override
	public int insert(Member member) throws Exception {
		return sqlSession.insert(NAMESPACE + "insertMember", member);
	}

	// 회원 상세 정보
	@Override
	public Member select(String id) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "selectById", id);
	}

	// 회원 수정
	@Override
	public int update(Member member) throws Exception {
		return sqlSession.update(NAMESPACE + "updateMember", member);
	}

	// 회원 탈퇴
	@Override
	public int delete(String id) throws Exception {
		return sqlSession.delete(NAMESPACE + "deleteMember", id);
	}

	// 아아디 존재 여부 확인
	@Override
	public int existedMember(String id) throws Exception {
		int cnt = sqlSession.selectOne(NAMESPACE + "existedMember", id);
		return cnt;
	}

	// 비밀번호 변경
	@Override
	public int updateMemberPassword(String id, String password) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("password", password);
		return sqlSession.update(NAMESPACE + "updateMemberPassword", map);
	}

}
