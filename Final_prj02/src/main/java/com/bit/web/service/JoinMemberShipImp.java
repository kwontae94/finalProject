package com.bit.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.bit.web.dao.JoinMemberShipDao;
import com.bit.web.entity.MemberInfo;

import lombok.Setter;

@Service
public class JoinMemberShipImp implements JoinMemberShip {

	@Setter(onMethod_ = {@Autowired})
	private JoinMemberShipDao joinMemberShipDao;
	
	@Setter(onMethod_ = {@Autowired})
	private BCryptPasswordEncoder passwordencoder;
	
	@Override
	public void updateInform(String account, String password, String name, String email) {
		
		MemberInfo memberInfo = new MemberInfo();
		
		memberInfo.setAccount(account);
		memberInfo.setPassword(passwordencoder.encode(password));
		memberInfo.setName(name);
		memberInfo.setEmail(email);
		
		joinMemberShipDao.updateInform(memberInfo);
		
	}
	
}
