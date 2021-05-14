package com.bit.web.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.web.dao.PictureDao;
import com.bit.web.entity.PictureVo;


@Service
public class PictureServiceImpl implements PictureService{

	
	@Autowired
	private PictureDao pictureDao;
	
	@Override
	public List<PictureVo> selectAll(String id) {
		System.out.println(pictureDao.selectAll2(id));
		return pictureDao.selectAll(id);
	}

	@Override
	public Map<Integer, String> selectAll2(String id) {
		
		
		
		
		List list=pictureDao.selectAll2(id);
		
		Map fileNameList=new HashMap<Integer,String>();
		
		for(int i=0;i<3;i++) {
			PictureVo bean=(PictureVo) list.get(i);
			bean.getFileName();
			
			fileNameList.put(i,bean.getFileName());
		}
		
		System.out.println(fileNameList.toString());
		
		return fileNameList;
	}

	

}
