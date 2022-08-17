package myspring.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myspring.user.dao.BoardDAO;
import myspring.user.vo.BoardVO;

@Service
public class BoardServiceImple implements BoardService {
	
	@Autowired
	BoardDAO boarddao;

	@Override
	public void write(BoardVO vo) {
		System.out.println("����� �����Դϴ�. : " + vo);
		boarddao.write(vo);
	}

	@Override
	public List<BoardVO> list() {
		return boarddao.list();
	}

	@Override
	public BoardVO read(int bno) {
		return boarddao.read(bno);
	}

	@Override
	public void update(BoardVO vo) {
		System.out.println("�����Դϴ� : " + vo);
		boarddao.update(vo);
	}

	@Override
	public void delete(int bno) {
		System.out.println("�����Դϴ� : " + bno);
		boarddao.delete(bno);
	}

}
