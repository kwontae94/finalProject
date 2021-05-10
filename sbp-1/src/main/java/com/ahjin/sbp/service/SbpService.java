package com.ahjin.sbp.service;

import java.util.List;

import com.ahjin.sbp.model.Guestbook;

public interface SbpService {

	public List<Guestbook> getGuestBookList();
	
	public int addGuestBook(Guestbook guestbook);

	public int deleteGuestBook(Guestbook guestbook);
}
