package com.bit.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.web.dao.JoinMemberCancelDao;

import lombok.Setter;

@Service
public class JoinMemberCancelImp implements JoinMemberCancel {

	@Setter(onMethod_ = {@Autowired})
	private JoinMemberCancelDao joinMemberCancelDao;
	
	@Override
	public void deleteId(String account) {
		
		joinMemberCancelDao.deleteId(account);
		
	}
}
