package com.bit.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bit.web.entity.CreateVo;


@Mapper
public interface CreateDao {

//	@Select("select id from newpage where id = #{id} ")
	String checkPage(String id);
	

	void createOne(CreateVo bean);
	
	List<CreateVo> selectLayout(String id);
	

}
