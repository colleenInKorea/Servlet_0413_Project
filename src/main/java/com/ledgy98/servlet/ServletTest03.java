package com.ledgy98.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class ServletTest03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		
		out.println("<html>"
				+ "<head>"
				+ "<title>리스트 출력</title>"
				+ "</head>"
				+ "<body>"
				+ "<ul>");
		for (int i = 0; i <31 ; i++) {
				out.println("<li>"+(i+1)+"번째 리스트 </li>");	
		}
		out.println("</ul>"
				+ "</body>"
				+ "</html>");
		
	}

}
