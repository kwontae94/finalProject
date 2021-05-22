package com.bit.web.service;

import java.util.List;

import com.bit.web.entity.CreateVo;

public interface CreateService {
	
	String checkPage(String id);
	
	void createOne(int layout, String title, String email, String phone, String user, String id);
	
	List<CreateVo> selectLayout(String id);
	
	List<CreateVo> selectID();
	
	void updatePage(int layout, String title, String email, String phone, String user, String id);

}
