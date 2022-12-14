package com.spring.admin.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.admin.dao.GoodsDao;
import com.spring.admin.dao.impl.GoodsDaoImpl;
import com.spring.admin.service.AdminService;
import com.spring.admin.vo.Criteria;
import com.spring.admin.vo.GoodsVo;
import com.spring.admin.vo.ImageFileVo;
import com.spring.admin.vo.PageMaker;
import com.spring.admin.vo.ShoppingVo;
import com.spring.member.vo.MemberVo;


@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	// Admin Main
//	@RequestMapping(value="/admin", method=RequestMethod.GET)
//	public String loginForm() {
//		return "admin/adminMain";  
//	}

	// Member List
//	@RequestMapping(value="/memberList", method=RequestMethod.GET)
//	public ModelAndView memberList() {
//		
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		List<MemberVo> memberList = adminService.getMemberList(map);
//		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("admin/memberList");
//		mv.addObject("memberList", memberList);
//		
//		return mv;  
//	}
	
	// 멤버리스트 조회
	@RequestMapping(value="/memberList", method=RequestMethod.GET)
	public String memberList(Criteria cri, Model model) {
		
		model.addAttribute("memberList", adminService.getMemberList(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminService.listCount());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/memberList";
	}
	
	// 멤버리스트 수정
	@RequestMapping(value="/updateMemberForm", method=RequestMethod.GET)
	public String updateMemberForm(MemberVo vo, Model model) {
		
		model.addAttribute("update", adminService.read(vo.getMem_id()));
		
		return "mypage/updateForm";
	}
	
	@RequestMapping(value="/updateMember", method=RequestMethod.GET)
	public String updateMember(MemberVo vo) {
		
		adminService.updateMember(vo);
		
		return "redirect:/memberList";
	}
	
	// 멤버 삭제
	@RequestMapping("/Admin/delMember")
	public String delete(String mem_id) {
		adminService.deleteMember(mem_id);
		
		return "redirect:/memberList";   
	}
	
	//--------------------------------------------
	// 상품 등록
	//--------------------------------------------
	
	// 상품 등록 화면
	@RequestMapping(value="/addNewGoodsForm", method=RequestMethod.GET)
	public String addNewGoodsForm() {
		// temp 폴더 생성용
		File temp = new File("c:\\upload\\temp");
		if(!temp.exists()) {temp.mkdirs();}
		return "admin/goods/addNewGoodsForm";
	}

	@RequestMapping(value = "/addNewGoods", method = RequestMethod.POST)
	public String register(GoodsVo goodsVo, RedirectAttributes rttr)
	{
		adminService.insertGoods(goodsVo);
		return "redirect:/admin";
	}
	
	// 상품관리 화면
	// 상품리스트 조회
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String goodsList(Criteria cri, Model model) {
		
		model.addAttribute("goodsList", adminService.getGoodsList(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminService.goodsListCount());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/adminMain";
	}
	
	// 상품 정보 수정
	@RequestMapping(value="/updateGoodsForm", method=RequestMethod.GET)
	public String updateGoodsForm(GoodsVo goodsVo, Model model) {
		
		model.addAttribute("goodsInfo", adminService.goodsInfo(goodsVo.getGoods_idx()));
		
		return "admin/goods/updateGoodsForm";
	}
	
	// 상품 수정
	@RequestMapping(value="/updateGoods", method=RequestMethod.POST)
	public String updateGoods(GoodsVo goodsVo, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {

		adminService.updateGoods(goodsVo);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		return "redirect:/admin";
	}
	
	
	@RequestMapping(value="/getImageList", produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<ImageFileVo>> getImageList(int goods_idx){
		
		return new ResponseEntity<>(adminService.getImageList(goods_idx), HttpStatus.OK);
	}
	
	// 상품 삭제
	@RequestMapping("/deleteGoods")
	public String delete(@RequestParam("goods_idx") int goods_idx, Criteria cri, RedirectAttributes rttr)
	{
		List<ImageFileVo> attachList = adminService.getImageList(goods_idx);
		
		adminService.delete(goods_idx);
		deleteFiles(attachList);
		return "redirect:/admin";
	}

	private void deleteFiles(List<ImageFileVo> imageList){
		if (imageList == null || imageList.size() == 0) {
			return;
		}
		
		imageList.forEach(attach -> {
			try {
				Path file = Paths.get("c:\\upload\\" + attach.getUploadpath() + "\\" + attach.getImg_name() + "_" + attach.getFilename());
				Files.deleteIfExists(file);
				
				if (Files.probeContentType(file).startsWith("image")) {
					Path thumbNail = Paths.get("c:\\upload\\" + attach.getUploadpath() + "\\_s" + attach.getImg_name() + "_" + attach.getFilename());
					Files.delete(thumbNail);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		});
		
	}
	
	// 상품 구매 화면
	@RequestMapping(value="/shopping", method=RequestMethod.GET)
	public String shopping(Criteria cri, Model model, HttpServletRequest request,
						HttpServletResponse response) {

		response.setContentType("text/html;charset=utf-8");
		
		model.addAttribute("shoppingList", adminService.getShoppingList(cri));
		
		// 페이징
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminService.goodsListCount());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "menus/shopping";
	}
	
	// 상품 상세화면
	@RequestMapping(value="/goodsinfo", method=RequestMethod.GET)
	public String goodsinfo(GoodsVo goodsVo, Model model) {
		
		model.addAttribute("list", adminService.getImageList(goodsVo.getGoods_idx()));
		model.addAttribute("goodsInfo", adminService.goodsInfo(goodsVo.getGoods_idx()));
		
		return "goods/goodsinfo";
	}
	
}
