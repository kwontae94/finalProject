package com.bit.web.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.Setter;

@Configuration
public class WebSecurityConfigure extends WebSecurityConfigurerAdapter {
	
	@Setter(onMethod_ = {@Autowired})
	private DataSource dataSource;
	
	@Setter(onMethod_ = {@Autowired})
	private AuthenticationSuccessHandler AuthenticationSuccessHandler;
	
	@Setter(onMethod_ = {@Autowired})
	private AuthenticationFailureHandler authenticationFailureHandler;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
			.antMatchers("/style.css","/style/**").permitAll()	//js ,css style 적용
			.antMatchers("/","/home","/guest/**").permitAll()			// 모든 이용자 접근 가능
			.antMatchers("/idcheck","/join","/sendmail").permitAll()	//이용자가 직접 접근 불가능
			.antMatchers("/member/**").hasAnyRole("USER","ADMIN")		//회원및 관리자 이용
			.anyRequest().authenticated();
		
		//Begin - User Id 및  Pwd 확인
		http.formLogin()
			.loginPage("/guest/login")
			.usernameParameter("userId")
			.passwordParameter("userPwd")
			.loginProcessingUrl("/j_spring_security_check") 
			.successHandler(AuthenticationSuccessHandler)
			.failureHandler(authenticationFailureHandler)
			.permitAll();
		//End
		
		http.logout()
			.logoutUrl("/logout")
			.logoutSuccessUrl("/home")	//로그아웃 성공시 홈페이지로 이동
			.permitAll();
		
		//http.csrf().disable();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.jdbcAuthentication()
			.dataSource(dataSource)
			.usersByUsernameQuery("select id, password, enabled from user_list where id = ?")
			.authoritiesByUsernameQuery("select id, authority from user_list where id=?")
			.passwordEncoder(new BCryptPasswordEncoder());
	}
	
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

}
