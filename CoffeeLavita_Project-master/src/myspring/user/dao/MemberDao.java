package myspring.user.dao;

import java.util.List;

import myspring.user.vo.MemberVO;

public interface MemberDao {
	
	//ȸ������
	public void insert(MemberVO vo);
	
	//�α���
	public MemberVO login(MemberVO vo);
	
	//ȸ�� ���
	public List<MemberVO> master();
	
	//ȸ�� ��ȸ
	public MemberVO masterView(String id);
	
	//ȸ�� ����
	public void delete(String vo);
	
	//ȸ�� ������Ʈ
	public void update(MemberVO vo);
}
