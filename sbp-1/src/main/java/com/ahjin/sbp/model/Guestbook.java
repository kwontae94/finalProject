package com.ahjin.sbp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.beans.factory.BeanNameAware;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@Data
@Entity
@Table(name="guestbook")
public class Guestbook implements BeanNameAware{

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="content")
	private String content;
	
	@Column(name="regdate")
	private String regdate;
	
	@Override
	public void setBeanName(String name) {
		System.out.println("빈 이름 확인 ~ :" + name);
	}


}
