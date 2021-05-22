package com.bit.web.controller.album;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.beans.factory.annotation.Autowired;


import com.bit.web.entity.AttachFileVo;
import com.bit.web.service.AttachFileService;
import com.bit.web.service.IdCheck;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j2
@RequestMapping("/album/")
public class AlbumAddController {
	
	static String uploadFileName;
	static String path;
	
	@Setter(onMethod_ = {@Autowired})
	private AttachFileService attachFileService;

	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
	
	
	@RequestMapping("add")
	public String addalbum() {
		System.out.println("AlbumAddController");
		return "album/add";
	}
	
	private boolean checkImageType(File file) {
		
		try {
			String contentType = Files.probeContentType(file.toPath());
			return contentType.startsWith("image");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
	}
	
// 폼형식의 업로드
//	@RequestMapping("/uploadAjax")
//	public void fileupload(MultipartFile[] uploadFile, Model model) {
//
//	System.out.println("uploadForm");
//	String uploadFolder = "C:/Users/USER/Desktop/java/final_project/Final_prj02/src/main/resources/static/assets/upload/";
//
//	for(MultipartFile multipartFile : uploadFile) {
//		log.info("---------------------------------------------");
//		log.info("Upload File Name: "+multipartFile.getOriginalFilename());
//	File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
//
//	try {
//		multipartFile.transferTo(saveFile);
//	}catch(Exception e) {
//		log.error(e.getMessage());
//	}
//
//	}

//	@ResponseBody
//	  @RequestMapping(value ="/uploadAjax2", method=RequestMethod.POST, 
//	                  produces = "text/plain;charset=UTF-8")
//	  public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception{
//		System.out.println("444");
//	    logger.info("originalName: " + file.getOriginalFilename());
//	    
//	   
//	    return 
//	      new ResponseEntity<>(
//	          "ttttttt", 
//	          HttpStatus.CREATED);
//	  }
	
	
	
	@PostMapping(value="uploadAjax")
	public void fileupload(MultipartFile[] uploadFile, HttpServletRequest request) {

		System.out.println("uploadAjax");
		String uploadFolder ="C:/Users/USER/Desktop/java/final_project/Final_prj02/src/main/resources/static/assets/upload/";

		//make folder
		File uploadPath = new File(uploadFolder, getFolder());
		log.info("upload path : "+uploadPath);
		if (uploadPath.exists()==false) {
			uploadPath.mkdirs();
		}
		path=uploadPath.getPath();
		//end make folder 
		
		
		for(MultipartFile multipartFile : uploadFile) {
			log.info("---------------------------------------------");
			log.info("Upload File Name: "+multipartFile.getOriginalFilename());
			log.info("Upload File Size:" +multipartFile.getSize());

			uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			log.info("only file name:" +uploadFileName);

			UUID uuid = UUID.randomUUID();
			
			uploadFileName = uuid.toString()+"_"+uploadFileName;
			
			
			try {
				File saveFile = new File(uploadPath, uploadFileName);
				multipartFile.transferTo(saveFile);
				if(checkImageType(saveFile)) {
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_"+uploadFileName));
					Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 840, 600);
					thumbnail.close();
				}
				}
			catch(Exception e) {
				log.error(e.getMessage());
			} //end catch

		} // end for

	}
	
	@PostMapping("/uploadProc")
	public String imageUploadProc(HttpServletRequest request, @RequestParam("uploadFile") MultipartFile file, @RequestParam("caption") String caption,
			@RequestParam("location") String location) throws IOException {
		
		HttpSession session=request.getSession();
		String id=(String) session.getAttribute("userID");
		System.out.println(file.getResource());
		System.out.println(caption);
		System.out.println(location);
		
		String uploadFolder = "./assets/upload/";

		attachFileService.upload(uploadFileName, path, id, location, caption);
		

		return "redirect:/album";
	}
	
	
}
