package com.bit.web.service;

import java.util.List;

import com.bit.web.entity.PictureVo;

public interface PictureService {

	List<PictureVo> selectAll(String id);
	
	List<String> selectAll2(String id);
}
