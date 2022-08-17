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
		System.out.println("==> UserController 기본 생성자 호출됨!!");
	}
	 
	//회원가입
	 @RequestMapping(value = "/register.do")
	 public String register(MemberVO user) {
		 System.out.println(user);
		 service.insertUser(user);
		 System.out.println("회원가입 완료");
		 return "log";
	 }
	 
	 //로그인
	 @RequestMapping(value = "/log.do",method = RequestMethod.POST)
	 public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) {
		 System.out.println("컨트롤의 vo입니당. : " + vo);
		 
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
	 //로그아웃의 href가 logdout.do이면 바로 로그아웃이 된다.
		public String logout(HttpSession session){
		 System.out.println("로그아웃이 됩니다.");
			session.invalidate();
			
			return "redirect:/";
		}
	 
	 //master 페이지 로딩
	 @RequestMapping(value = "/master", method = RequestMethod.GET)
	 public String master(Model model) {
		 System.out.println("마스터 페이지 회원목록");
		 model.addAttribute("master",service.master());
		 return "master";
	 }
	 
	 //마스터 페이지 상세정보
	 @RequestMapping(value = "/masterView")
	 public String masterView(MemberVO vo, Model model) {
		 System.out.println("값이 잘 들어오나용? : " + vo.getMem_id());
		 model.addAttribute("masterView",service.masterView(vo.getMem_id()));
		 return "masterView";
	 }
	 
	 //마스터 페이지 삭제
	 @RequestMapping(value = "/deleteUser")
	 public String deleteUser(MemberVO vo) {
		 System.out.println("삭제됩니다 : " + vo.getMem_id());
		 service.delete(vo.getMem_id());
		 return "redirect:/master";
	 }
	 //마스터 페이지 업데이트
	 @RequestMapping(value = "/updateViewUser")
	 public String updateUser(MemberVO vo) {
		 service.update(vo);
		 System.out.println("업데이트 됩니다 : " + vo);
		 return "redirect:/master";
	 }
}
