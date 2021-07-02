package com.ledgy98.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test02")
public class ServletTest02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		Date now = new Date();
		PrintWriter out = response.getWriter();
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy/mm/dd hh:mm:ss");
		String formatter = format.format(now);
		
		out.println("<html>"
				+ "<head>"
				+ "<title> 고양이가 야옹해 </title>"
				+ "</head>"
				+ "<body>"
				+ "<h2> [단독] 고양이가 야옹해 </h2>"
				+"기사 입력시간 " + formatter
				+ "<hr>"
				+ "<b>끝</b>"
				+ "</body>"
				+ "</html>");
		
	}
}
