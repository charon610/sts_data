package myspring.user.dao;

import java.util.List;

import myspring.user.vo.BoardVO;

public interface BoardDAO {
	//�Խñ� �ۼ�
	public void write(BoardVO vo);
	
	//�Խù� ��� ��ȸ
	public List<BoardVO> list();
	
	//�Խù� ��ȸ
	public BoardVO read(int bno);
	
	//�Խù� ����
	public void update(BoardVO vo);
	
	//�Խù� ����
	public void delete(int bno);
}