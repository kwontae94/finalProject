package com.bit.web.service;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bit.web.dao.CreateDao;
import com.bit.web.entity.CreateVo;

import lombok.Setter;

@Service
public class CreateServiceImpl implements CreateService{


	@Setter(onMethod_ = {@Autowired})
	private CreateDao createDao;
	
	@Override
	public String checkPage(String id) {
		
		return createDao.checkPage(id);
	}

	@Override
	@Transactional
	public void createOne(int layout, String title, String email, String phone, String user, String id) {
		CreateVo bean=new CreateVo();
		bean.setLayout(layout);
		bean.setTitle(title);
		bean.setEmail(email);
		bean.setPhone(phone);
		bean.setUser(user);
		bean.setId(id);

		createDao.createOne(bean);
		
	}

	@Override
	public List<CreateVo> selectLayout(String id) {
		
		return createDao.selectLayout(id);
		//List를 넘겨준다 controller로
	}

	@Override
	public List<CreateVo> selectID() {
		
		System.out.println(createDao.selectID());
		
		return createDao.selectID();
	}

	@Override
	public void updatePage(int layout, String title, String email, String phone, String user, String id) {
		 
		CreateVo bean=new CreateVo();
		bean.setLayout(layout);
		bean.setTitle(title);
		bean.setEmail(email);
		bean.setPhone(phone);
		bean.setUser(user);
		bean.setId(id);
		
		createDao.updatePage(bean);
	}

	@Override
	public List<CreateVo> join() {
		
		System.out.println("join 결과물 :  " + createDao.join());
		
		return createDao.join();
	}

	
	

}
