package myspring.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import myspring.user.service.BoardService;
import myspring.user.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService service;
	
	//게시판 글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(BoardVO vo) {
		System.out.println("게시물이 등록되었습니다. : " + vo);
		service.write(vo);
		return "redirect:/list";
	}
	
	//게시판 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		System.out.println("게시물 목록입니당. : " + model);
		model.addAttribute("list",service.list());
		return "list";
	}
	//관리자 게시판 목록 조회
	@RequestMapping(value = "/listMaster", method = RequestMethod.GET)
	public String listMaster(Model model) {
		System.out.println("게시물 목록입니당. : " + model);
		model.addAttribute("list",service.list());
		return "listMaster";
	}
	//나의 게시물 목록 조회
	@RequestMapping(value = "/mylist", method = RequestMethod.GET)
	public String mylist(Model model) {
		System.out.println("게시물 목록입니당. : " + model);
		model.addAttribute("list",service.list());
		return "mylist";
	}
	
	//게시판 조회
	@RequestMapping(value="/listView", method = RequestMethod.GET)
	public String read(BoardVO vo, Model model) {
		System.out.println("게시물 목록입니당 : "+ vo);
		model.addAttribute("read", service.read(vo.getBno()));
		return "listView";
	}
	//마스터 게시판 뷰 조회
		@RequestMapping(value="/masterlistView", method = RequestMethod.GET)
		public String masterRead(BoardVO vo, Model model) {
			System.out.println("게시물 목록입니당 : "+ vo);
			model.addAttribute("read", service.read(vo.getBno()));
			return "masterlistView";
		}
	//게시판 수정뷰
	@RequestMapping(value = "/updateViewlist", method= {RequestMethod.GET, RequestMethod.POST})
	public String updateView(BoardVO vo, Model model) {
		System.out.println("게시판 수정뷰 : " + vo);
		model.addAttribute("update",service.read(vo.getBno()));
		return "updateViewlist";
	}
	
	//게시판 수정
	@RequestMapping(value = "/update", method= {RequestMethod.GET, RequestMethod.POST})
	public String update(BoardVO vo) {
		System.out.println("게시판 수정합니다 : " + vo);
		service.update(vo);
		return "redirect:/list";
	}
	
	//게시판 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(BoardVO vo) {
		System.out.println("삭제 되었습니다. : " + vo);
		service.delete(vo.getBno());
		return "redirect:/list";
	}
}
