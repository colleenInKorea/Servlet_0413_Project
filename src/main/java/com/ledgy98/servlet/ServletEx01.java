package com.ledgy98.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//한글 깨지는 문제
		//인코딩 설정
		response.setCharacterEncoding("UTF-8");
		//컨텐츠 타입
		//돌려주면서 어떤 타입의 컨텐츠인지 알려준다. 
		response.setContentType("text/plain");
		
		//DATE 객체 
		Date now = new Date();
		PrintWriter out = response.getWriter();
		out.println(now);
		
		//formatter
		SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String formatDate = format.format(now);
		out.println(formatDate);
		
		
		
		
		
	}
	
}
