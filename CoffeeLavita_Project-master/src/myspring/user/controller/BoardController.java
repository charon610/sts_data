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
	
	//�Խ��� �� �ۼ�
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(BoardVO vo) {
		System.out.println("�Խù��� ��ϵǾ����ϴ�. : " + vo);
		service.write(vo);
		return "redirect:/list";
	}
	
	//�Խ��� ��� ��ȸ
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		System.out.println("�Խù� ����Դϴ�. : " + model);
		model.addAttribute("list",service.list());
		return "list";
	}
	//������ �Խ��� ��� ��ȸ
	@RequestMapping(value = "/listMaster", method = RequestMethod.GET)
	public String listMaster(Model model) {
		System.out.println("�Խù� ����Դϴ�. : " + model);
		model.addAttribute("list",service.list());
		return "listMaster";
	}
	//���� �Խù� ��� ��ȸ
	@RequestMapping(value = "/mylist", method = RequestMethod.GET)
	public String mylist(Model model) {
		System.out.println("�Խù� ����Դϴ�. : " + model);
		model.addAttribute("list",service.list());
		return "mylist";
	}
	
	//�Խ��� ��ȸ
	@RequestMapping(value="/listView", method = RequestMethod.GET)
	public String read(BoardVO vo, Model model) {
		System.out.println("�Խù� ����Դϴ� : "+ vo);
		model.addAttribute("read", service.read(vo.getBno()));
		return "listView";
	}
	//������ �Խ��� �� ��ȸ
		@RequestMapping(value="/masterlistView", method = RequestMethod.GET)
		public String masterRead(BoardVO vo, Model model) {
			System.out.println("�Խù� ����Դϴ� : "+ vo);
			model.addAttribute("read", service.read(vo.getBno()));
			return "masterlistView";
		}
	//�Խ��� ������
	@RequestMapping(value = "/updateViewlist", method= {RequestMethod.GET, RequestMethod.POST})
	public String updateView(BoardVO vo, Model model) {
		System.out.println("�Խ��� ������ : " + vo);
		model.addAttribute("update",service.read(vo.getBno()));
		return "updateViewlist";
	}
	
	//�Խ��� ����
	@RequestMapping(value = "/update", method= {RequestMethod.GET, RequestMethod.POST})
	public String update(BoardVO vo) {
		System.out.println("�Խ��� �����մϴ� : " + vo);
		service.update(vo);
		return "redirect:/list";
	}
	
	//�Խ��� ����
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(BoardVO vo) {
		System.out.println("���� �Ǿ����ϴ�. : " + vo);
		service.delete(vo.getBno());
		return "redirect:/list";
	}
}
