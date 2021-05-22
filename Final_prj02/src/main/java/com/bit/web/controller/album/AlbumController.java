package com.bit.web.controller.album;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.bit.web.entity.AttachFileVo;
import com.bit.web.entity.CreateVo;
import com.bit.web.service.AttachFileService;
import com.bit.web.service.CreateService;

import lombok.Setter;

@Controller
@RequestMapping("/album")
public class AlbumController {

	@Setter(onMethod_ = {@Autowired})
	private AttachFileService attachFileService;
	
	@Autowired
	CreateService createService;
	
	@RequestMapping("")
	public String album(@RequestParam("id")String id, HttpServletRequest request, Model model) {
		System.out.println("AlbumComtroller");

//		HttpSession session=request.getSession();
//		String id=(String) session.getAttribute("userID");

		List<CreateVo> layout=createService.selectLayout(id); //newpage layout 정보 가지고 옴 
		List<AttachFileVo> list = attachFileService.selectFile(id); //file정보 가지고 옴
		
		CreateVo bean=layout.get(0); //list에서 layout 정보 뽑기
		
		if(bean.getLayout()==1) {
			model.addAttribute("layout",layout); //권탬 layout 정보 넘겨줌
			model.addAttribute("list",list); //file 정보 넘겨줌
			return "album/album";
			
		}else if(bean.getLayout()==2) {
			model.addAttribute("layout",layout); //권탬 layout 정보 넘겨줌
			model.addAttribute("list",list); //file 정보 넘겨줌
			return "album/album2";
		}
		
		return null;
	}
	
	@RequestMapping("/detail")
	public String albumdetail(@RequestParam("id") String id, HttpServletRequest request, Model model, String fileName) {
		
		System.out.println("detailpage");
		System.out.println("파일 네임이 잘 넘어오는지? "+ fileName);
		
		List<AttachFileVo> list = attachFileService.selectFileName(fileName);
		List<CreateVo> layout=createService.selectLayout(id);
		
		System.out.println(list);
		
		CreateVo bean=layout.get(0); //list에서 layout 정보 뽑기
		
		if(bean.getLayout()==1) {
			model.addAttribute("layout",layout); //권탬 layout 정보 넘겨줌
			model.addAttribute("list",list); //file 정보 넘겨줌
			return "album/detail";
			
		}else if(bean.getLayout()==2) {
			model.addAttribute("layout",layout); //권탬 layout 정보 넘겨줌
			model.addAttribute("list",list); //file 정보 넘겨줌
			return "album/detail2";
		}
		
		return null;
	}
	
	@RequestMapping("/delete")
	public String albumdelete(@RequestParam("id") String id, HttpServletRequest request, Model model, String fileName) {
		System.out.println("딜리트 파일네임 잘 넘어오는지? "+ fileName);
		
		attachFileService.delete(fileName);
		
		return "redirect:/album?id="+id;

	}
	
	
	
	  @ResponseBody
	  @RequestMapping("/displayFile")
	  public ResponseEntity<byte[]>  displayFile(String fileName)throws Exception{
	    
	    InputStream in = null; 
	    ResponseEntity<byte[]> entity = null;
	    
	    
	    try{
	      
	      //String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	      
	      //MediaType mType = MediaUtils.getMediaType(formatName);
	      
	      HttpHeaders headers = new HttpHeaders();
	      String uploadPath="C:\\Users\\USER\\Desktop\\java\\final_project\\Final_prj02\\src\\main\\resources\\static\\assets\\upload\\2021\\05\\20\\";
	      in = new FileInputStream(uploadPath+fileName);
	      
	      fileName = fileName.substring(fileName.indexOf("_")+1);       

//  	      if(mType != null){
//	        headers.setContentType(mType);
//	      }else{
//	        
	      headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
	      headers.add("Content-Disposition", "attachment; filename=\""+ 
	    		  new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
//	        
//	      }
	        

	        entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), 
	          headers, 
	          HttpStatus.CREATED);
	    }catch(Exception e){
	      e.printStackTrace();
	      entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
	    }finally{
	      in.close();
	    }
	      return entity;    
	  }
	
}
