package com.bit.web.controller.home;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.web.entity.CreateVo;
import com.bit.web.entity.PictureVo;
import com.bit.web.service.AttachFileService;
import com.bit.web.service.CreateService;
import com.bit.web.service.CreateServiceImpl;
import com.bit.web.service.PictureService;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	CreateService createService;
	
	@Autowired
	PictureService pictureService;
	
	@Autowired
	AttachFileService attachFileService;
	

	@RequestMapping("")
	public String home1() {
		return "home.home"; // TilesViewResolver
	}

	@RequestMapping("home")
	public String home2() {

		return "home.home"; // TilesViewResolver
	}

	@GetMapping("home/add")
	public String add(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("userID");
		System.out.println(id);
		
		 if (createService.checkPage(id) == null) {
			 model.addAttribute("newpageID",createService.checkPage(id));
			 System.out.println("페이지 생성 성공"+createService.checkPage(id)); 
		} else if (createService.checkPage(id) != null){
			model.addAttribute("newpageID","ID 있음"); 
			System.out.println("실패");
		}
		
		System.out.println("/add ]url...");
		return "/home/add";

	}

	@PostMapping("create")
	public String create(@RequestParam("layout") int layout,
						@RequestParam("title") String title,
						@RequestParam("email") String email,
						@RequestParam("phone") String phone,
						@RequestParam("user") String user,
						@RequestParam("id") String id,
						Model model
			
			) {

		System.out.println("/create ]url before...");
		System.out.println(layout);
		System.out.println(title);
		System.out.println(email);
		System.out.println(phone);
		System.out.println(user);
		System.out.println(id);
		
		createService.createOne(layout,title,email,phone,user,id);
		System.out.println("/url after...");

		return "home.home";
	}
	
	@GetMapping("page")
	public String mypage(HttpServletRequest request,Model model) {
		
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("userID"); //session에서 ID값 받아오기
		System.out.println(id);
		
		List<CreateVo> list=createService.selectLayout(id);//newpage table의 스키마 list로 받아옴
		
		
		if(list.size()>0) {
			CreateVo bean=list.get(0);
			if(bean.getLayout()==1) {
				model.addAttribute("layout",list);
//				model.addAttribute("pictures",pictureService.selectAll(id)); //mypage1 time line 넘어가는 부분
				System.out.println("석진이형 받아옴" + attachFileService.selectFile(id));
				model.addAttribute("list1",attachFileService.selectFile(id));
				return "pages/mypage";
			}else if(bean.getLayout()==2) {
				model.addAttribute("layout",list);
				if(pictureService.selectAll2(id).size()<3) {
					Map<String,String> basic=new HashMap<String,String>();
					basic.put("picture0","/assets/defaultImgs/back01.jpg");
					basic.put("picture1","/assets/defaultImgs/back03.jpg");
					basic.put("picture2","/assets/defaultImgs/back05.jpg");
					System.out.println("basic"+basic);
					model.addAttribute("pictures",basic);
				}else {
					model.addAttribute("pictures",pictureService.selectAll2(id)); //이부분도 석진이형 코드로 변경 필요
					
					
				}
				
				return "pages/mypage2";
			}
			//list.size가 0이상이면 newpage 테이블에 스키마 존재 layout 컬럼 값에 따라 layout 결정
			
		}else if(list.size()==0) {
			model.addAttribute("msg", "여행록을 생성하지 않았습니다 여행록을 작성하세요");
			return "home.home";
			//list size가 0이면 아직 만들어진 페이지가 없다.
		}
		
		return null;
				
	}
	
	@GetMapping("pictureList")
	public String pictureList(Model model) {
		
		
		
		List selectID=createService.selectID();
		
		System.out.println("selectID="+selectID);
		
		Iterator<CreateVo> it=selectID.iterator();
		
		while(it.hasNext()) {
			CreateVo name=it.next();
			String getId=name.getId();
			model.addAttribute("getId", pictureService.selectAll(getId));
		}
		
		
		model.addAttribute("selectID",createService.selectID());
		
		return "/home/pictureList";
	}
	
	@GetMapping("others")
	public String others(@RequestParam("id") String id, Model model) {
		
		List<CreateVo> list=createService.selectLayout(id);//newpage table의 스키마 list로 받아옴
		
		if(list.size()>0) {
			CreateVo bean=list.get(0);
			if(bean.getLayout()==1) {
				model.addAttribute("layout",list);
				model.addAttribute("pictures",pictureService.selectAll(id));
				return "pages/mypage";
			}else if(bean.getLayout()==2) {
				model.addAttribute("layout",list);
				
				if(pictureService.selectAll2(id).size()<3) {
					Map<String,String> basic=new HashMap<String,String>();
					basic.put("picture0","/assets/defaultImgs/back01.jpg");
					basic.put("picture1","/assets/defaultImgs/back03.jpg");
					basic.put("picture2","/assets/defaultImgs/back05.jpg");
					System.out.println("basic"+basic);
					model.addAttribute("pictures",basic);
				}else {
					model.addAttribute("pictures",pictureService.selectAll2(id)); //이부분 석진이형 코드로 변환 필요
				}
				
				return "pages/mypage2";
			}
			//list.size가 0이상이면 newpage 테이블에 스키마 존재 layout 컬럼 값에 따라 layout 결정
			
		}
		
		return null;
	}
	
	@GetMapping("update")
	public String updateLayout(@RequestParam("id") String id, Model model) {
		
		model.addAttribute("layout",createService.selectLayout(id)); 
		
		return "/home/update";
	}
	
	@PostMapping("update")
	public String updatePage(@RequestParam("layout") int layout,
						@RequestParam("title") String title,
						@RequestParam("email") String email,
						@RequestParam("phone") String phone,
						@RequestParam("user") String user,
						@RequestParam("id") String id,
						Model model
			
			) {

		System.out.println("/update ]url before...");
		System.out.println(layout);
		System.out.println(title);
		System.out.println(email);
		System.out.println(phone);
		System.out.println(user);
		System.out.println(id);
		
		createService.updatePage(layout,title,email,phone,user,id);
		System.out.println("/url after...");

		return "home.home";
	}
	

}
