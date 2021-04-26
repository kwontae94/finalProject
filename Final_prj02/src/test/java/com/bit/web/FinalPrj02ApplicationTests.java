package com.bit.web;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.Setter;

@SpringBootTest
class FinalPrj02ApplicationTests {

	@Setter(onMethod_ = {@Autowired} )
	private DataSource dataSource;
	
	@Test
	void contextLoads() throws SQLException {
		
		System.out.println(dataSource.getConnection());
		
	}

}
