package com.ledgy98.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class ServletEx05 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String idString = request.getParameter("id");
		String nameString = request.getParameter("name");
		String brithString = request.getParameter("birth");
		String emailString = request.getParameter("email");
		
		out.println("<html>"
				+ "<head>"
				+ "<title>Ex 05</title>"
				+ "</head>"
				+ "<body>"
				+ "000의 정보"
				+ "<table border =1>"
				+"<tr><th>아이디</th><td>" + idString + "</td></tr>"
				+"<tr><th>이름</th><td>" + nameString + "</td></tr>"
				+"<tr><th>생년윌일</th><td>" + brithString + "</td></tr>"
				+"<tr><th>이메일</th><td>" + emailString + "</td></tr>"
				+"</table>"
				+ "</body>"
				+ "</html>");
	}

}
