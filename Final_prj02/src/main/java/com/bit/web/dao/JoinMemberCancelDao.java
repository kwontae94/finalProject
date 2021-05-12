package com.bit.web.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface JoinMemberCancelDao {

	public void deleteId(String account);
}
