package myspring.user.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import myspring.user.dao.mapper.MemberMapper;
import myspring.user.vo.MemberVO;

@Repository
public class MemberDaoImplMapper implements MemberDao {
	@Autowired
	private MemberMapper memberMapper;	

	@Override
	public void insert(MemberVO vo) {
		System.out.println("����� dao�Դϴ� : " + vo);
		memberMapper.insertUser(vo);
	}

	@Override
	public MemberVO login(MemberVO vo) {
		System.out.println("����� dao�Դϴ� : " + vo);
		return memberMapper.login(vo);
	}

	@Override
	public List<MemberVO> master() {
		System.out.println("����� �������� dao�Դϴ�.");
		return memberMapper.master();
	}

	@Override
	public void delete(String vo) {
		System.out.println("����� ������ dao�Դϴ�.");
			memberMapper.delete(vo);
	}

	@Override
	public MemberVO masterView(String id) {
		return memberMapper.masterView(id);
	}

	@Override
	public void update(MemberVO vo) {
		memberMapper.update(vo);
	}
	
}
