package com.bit.web.entity;


import java.sql.Date;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
public class AttachFileVo {

	private String fileName;
	private String uploadPath;
	private String id;
	private Date date;
	private String location;
	private String caption;
	
}
