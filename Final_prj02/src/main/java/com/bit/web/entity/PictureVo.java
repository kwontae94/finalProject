package com.bit.web.entity;

import java.sql.Date;

import lombok.Data;

@Data
public class PictureVo {

	private String title, comment, userName, fileName,id;
	private Date date;
}
