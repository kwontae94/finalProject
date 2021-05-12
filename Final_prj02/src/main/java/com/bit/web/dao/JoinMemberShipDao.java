package com.bit.web.dao;

import org.apache.ibatis.annotations.Mapper;

import com.bit.web.entity.MemberInfo;

@Mapper
public interface JoinMemberShipDao {

	public void updateInform(MemberInfo memberInfo);
}
