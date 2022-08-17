package myspring.user.controller;

import myspring.user.service.MemberService;
import myspring.user.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	MemberService service;
	
	public UserController() {
		System.out.println("==> UserController �⺻ ������ ȣ���!!");
	}
	 
	//ȸ������
	 @RequestMapping(value = "/register.do")
	 public String register(MemberVO user) {
		 System.out.println(user);
		 service.insertUser(user);
		 System.out.println("ȸ������ �Ϸ�");
		 return "log";
	 }
	 
	 //�α���
	 @RequestMapping(value = "/log.do",method = RequestMethod.POST)
	 public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) {
		 System.out.println("��Ʈ���� vo�Դϴ�. : " + vo);
		 
		 HttpSession session = req.getSession();
		 MemberVO login = service.login(vo);
		 
		 if(login == null) {
			 session.setAttribute("member", null);
			 rttr.addFlashAttribute("msg",false);
			 return "log";
		 }else {
			 session.setAttribute("member",login);
			 return "redirect:/";
		 }
	 }
	 
	 @RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	 //�α׾ƿ��� href�� logdout.do�̸� �ٷ� �α׾ƿ��� �ȴ�.
		public String logout(HttpSession session){
		 System.out.println("�α׾ƿ��� �˴ϴ�.");
			session.invalidate();
			
			return "redirect:/";
		}
	 
	 //master ������ �ε�
	 @RequestMapping(value = "/master", method = RequestMethod.GET)
	 public String master(Model model) {
		 System.out.println("������ ������ ȸ�����");
		 model.addAttribute("master",service.master());
		 return "master";
	 }
	 
	 //������ ������ ������
	 @RequestMapping(value = "/masterView")
	 public String masterView(MemberVO vo, Model model) {
		 System.out.println("���� �� ��������? : " + vo.getMem_id());
		 model.addAttribute("masterView",service.masterView(vo.getMem_id()));
		 return "masterView";
	 }
	 
	 //������ ������ ����
	 @RequestMapping(value = "/deleteUser")
	 public String deleteUser(MemberVO vo) {
		 System.out.println("�����˴ϴ� : " + vo.getMem_id());
		 service.delete(vo.getMem_id());
		 return "redirect:/master";
	 }
	 //������ ������ ������Ʈ
	 @RequestMapping(value = "/updateViewUser")
	 public String updateUser(MemberVO vo) {
		 service.update(vo);
		 System.out.println("������Ʈ �˴ϴ� : " + vo);
		 return "redirect:/master";
	 }
}
