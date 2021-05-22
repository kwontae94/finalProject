package com.bit.web.service;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import com.bit.web.dao.AttachFileDao;
import com.bit.web.entity.AttachFileVo;

import lombok.Setter;

@Service
public class AttachFileServiceImpl implements AttachFileService{

	@Setter(onMethod_ = {@Autowired})
	private AttachFileDao attachFileDao;
	
	
	@Override
	public List<AttachFileVo> selectFile(String id) {
		return attachFileDao.selectFile(id);
	}

	@Override
	public void upload(String fileName, String uploadPath, String id, String locatation, String caption) {
		AttachFileVo bean = new AttachFileVo();
		bean.setFileName(fileName);
		bean.setUploadPath(uploadPath);
		bean.setId(id);
		bean.setLocation(locatation);
		bean.setCaption(caption);
		
		attachFileDao.upload(bean);
		
	}

	@Override
	public List<AttachFileVo> selectFileName(String fileName) {
		
		return attachFileDao.selectFileName(fileName);
	}

	@Override
	public void delete(String fileName) {
		attachFileDao.delete(fileName);
		
	}


}
