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
	public Map<String, String> selectAll2(String id) {
		
		
		
		
		List list=pictureDao.selectAll2(id);
		
		Map fileNameList=new HashMap<String,String>();
		
		if(pictureDao.selectAll2(id).size()>=3) {
			for(int i=0;i<3;i++) {
				PictureVo bean=(PictureVo) list.get(i);
				bean.getFileName();
				
				fileNameList.put("picture"+i,bean.getFileName());
			}
		}
		
		System.out.println("맵 확인"+fileNameList.toString());
		
		return fileNameList;
	}

	

}
