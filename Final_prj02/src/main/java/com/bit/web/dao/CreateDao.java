package com.bit.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bit.web.entity.CreateVo;


@Mapper
public interface CreateDao {


	String checkPage(String id);	

	void createOne(CreateVo bean);
	
	List<CreateVo> selectLayout(String id);
	
	List<CreateVo> selectID();
	
	void updatePage(CreateVo bean);
	
	List<CreateVo> join();

}
