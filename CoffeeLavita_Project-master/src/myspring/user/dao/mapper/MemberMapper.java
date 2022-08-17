package myspring.user.dao.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Mapper;

import myspring.user.vo.MemberVO;

@Mapper
public interface MemberMapper {
	void insertUser(MemberVO memberVO);
	MemberVO login(MemberVO memberVO);
	List<MemberVO> master();
	void delete(String vo);
	MemberVO masterView(String id);
	void update(MemberVO vo);
}