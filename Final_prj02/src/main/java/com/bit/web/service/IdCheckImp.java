package com.bit.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.web.dao.IdCheckDao;

import lombok.Setter;

@Service
public class IdCheckImp implements IdCheck{

	@Setter(onMethod_ = {@Autowired})
	private IdCheckDao idCheckDao;
	
	@Override
	public void insertId(String userId) {
		idCheckDao.insertId(userId);
	}
}
