package com.ledgy98.common;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.sun.net.httpserver.Filter.Chain;

//@WebFilter("/*") annotation으로도 가능 일단은 xml로 유지 한다. 
public class CharacterEncodingFilter implements Filter {
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		request.setCharacterEncoding("utf-8");
		chain.doFilter(request, response);
		
	}
	
}
