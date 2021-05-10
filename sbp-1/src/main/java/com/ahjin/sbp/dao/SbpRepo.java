package com.ahjin.sbp.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ahjin.sbp.model.Guestbook;

@Repository
public interface SbpRepo extends JpaRepository<Guestbook, Integer>{
}
