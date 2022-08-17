package myspring.user.dao;

import java.util.List;

import myspring.user.vo.MemberVO;

public interface MemberDao {
	
	//회원가입
	public void insert(MemberVO vo);
	
	//로그인
	public MemberVO login(MemberVO vo);
	
	//회원 목록
	public List<MemberVO> master();
	
	//회원 조회
	public MemberVO masterView(String id);
	
	//회원 삭제
	public void delete(String vo);
	
	//회원 업데이트
	public void update(MemberVO vo);
}
