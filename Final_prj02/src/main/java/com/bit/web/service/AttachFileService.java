package com.bit.web.service;

import java.sql.Date;
import java.util.List;

import com.bit.web.entity.AttachFileVo;
import com.bit.web.entity.CreateVo;

public interface AttachFileService {
	
	List<AttachFileVo> selectFile(String id);
	
	List<AttachFileVo> selectFileName(String fileName);

	void upload(String fileName, String uploadPath, String id, String location, String caption);

	void delete(String fileName);

}
