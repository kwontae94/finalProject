package com.bit.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bit.web.entity.PictureVo;

@Mapper
public interface PictureDao {
	
	List<PictureVo> selectAll(String id);
	
	List<PictureVo> selectAll2(String id);
	
	
}
