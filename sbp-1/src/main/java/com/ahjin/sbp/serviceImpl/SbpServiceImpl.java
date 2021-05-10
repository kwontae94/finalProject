package com.ahjin.sbp.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ahjin.sbp.dao.SbpRepo;
import com.ahjin.sbp.model.Guestbook;
import com.ahjin.sbp.service.SbpService;

@Service
public class SbpServiceImpl implements SbpService{
	
	@Autowired SbpRepo sbpRepo;
	
	@Override
	public List<Guestbook> getGuestBookList() {
		return sbpRepo.findAll();
	}
	
	@Override
	public int addGuestBook(Guestbook guestbook) {
		System.out.println(guestbook);
		int result = 0;
		if(guestbook !=null) {
			sbpRepo.save(guestbook);
			result =1;
		}
		return result;
	}

	@Override
	public int deleteGuestBook(Guestbook guestbook) {
		System.out.println(guestbook);
		int result = 0;
		if(guestbook != null) {
			System.out.println("dd");
			sbpRepo.delete(guestbook);
			result =1;
		}
		return result;
	}
}
