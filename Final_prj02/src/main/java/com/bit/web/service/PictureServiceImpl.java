package com.bit.web.service;

import java.util.List;

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
	public List<String> selectAll2(String id) {
		
		System.out.println(pictureDao.selectAll2(id));
//		System.out.println(pictureDao.selectAll2(id).get(0));
//		System.out.println(pictureDao.selectAll2(id).get(1));
//		System.out.println(pictureDao.selectAll2(id).get(2));
		
		
		return pictureDao.selectAll2(id);
	}

}
