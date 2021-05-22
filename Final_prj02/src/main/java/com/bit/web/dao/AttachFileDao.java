package com.bit.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bit.web.entity.AttachFileVo;
import com.bit.web.entity.CreateVo;


@Mapper
public interface AttachFileDao {


	List<AttachFileVo> selectFile(String id);
	
	List<AttachFileVo> selectFileName(String fileName);

	void upload(AttachFileVo bean);
	
	void delete(String fileName);

}
