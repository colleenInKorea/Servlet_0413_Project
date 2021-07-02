package com.ledgy98.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class ServletTest09 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String idString = request.getParameter("id");
		String passwordString = request.getParameter("password");
		
		out.println("<html>"
				+ "<head>"
				+ "<title> test09 </title>"
				+ "</head>"
				+ "<body>");
		
			if(userMap.get("id").equals(idString) && userMap.get("password").equals(passwordString)) {
				out.println("<h3> " + userMap.get("name") + "님 환영합니다. </h3>"); 
			}else {
				out.println("<h4> id 혹은 password 가 일치 하지 않습니다. </h4>");
			}
		
		out.println("</body>"
				+ "</html>");
		
	}
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
}
