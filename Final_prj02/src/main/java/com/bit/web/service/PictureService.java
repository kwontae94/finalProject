package com.bit.web.service;

import java.util.List;
import java.util.Map;

import com.bit.web.entity.PictureVo;

public interface PictureService {

	List<PictureVo> selectAll(String id);
	
	Map<Integer,String> selectAll2(String id);
	
	
}
