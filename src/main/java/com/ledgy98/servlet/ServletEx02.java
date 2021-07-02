package com.ledgy98.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02")
public class ServletEx02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest resquest, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		String id = resquest.getParameter("user_id");
		String name = resquest.getParameter("name");
		String ageString = resquest.getParameter("age");
		
		int age = Integer.parseInt(ageString);
		
//		out.println("<html>"
//				+ "<head>"
//				+ "<title> get method </title>"
//				+ "</head>"
//				+ "<body>"
//				+ "<h3> id: " + id +"</h3>" 
//				+ "<h3> name: " + name +"</h3>" 
//				+ "<h3> age: " + age +"</h3>" 
//				+ "</body>"
//				+ "</html>");
		
//		{"user_id": "ledgy98", "name":"colleen", "age":"24"}
		
		String useridString = "\"user_id\":\""+ id + "\"";
		String nameString = "\"name\":\"" + name +"\"";
		String ageString2 = "\"age\":" + age;
		
		out.println("{" + useridString + ", " + nameString + ", " + ageString2 + "}");
		
	}

}
