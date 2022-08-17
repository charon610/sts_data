package myspring.user.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import myspring.user.dao.mapper.BoardMapper;
import myspring.user.vo.BoardVO;

@Repository
public class BoardDaoImplMapper implements BoardDAO {
	
	@Autowired
	private BoardMapper boardMapper;

	@Override
	public void write(BoardVO vo) {
		System.out.println("����� Dao�Դϴ� : "+ vo);
		boardMapper.insert(vo);
	}

	@Override
	public List<BoardVO> list() {
		List<BoardVO> boardList = boardMapper.list();
		return boardList;
	}

	@Override
	public BoardVO read(int bno) {
		return boardMapper.read(bno);
	}

	@Override
	public void update(BoardVO vo) {
		System.out.println("Dao �����Դϴ� : " + vo);
		boardMapper.update(vo);
	}

	@Override
	public void delete(int bno) {
		System.out.println("Dao�Դϴ�. : " + bno);
		boardMapper.delete(bno);
		
	}

}
