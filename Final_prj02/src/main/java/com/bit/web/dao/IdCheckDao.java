package com.bit.web.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IdCheckDao {

	public void insertId(String userId);
}
