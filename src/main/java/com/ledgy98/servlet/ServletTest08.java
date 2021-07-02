package com.ledgy98.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class ServletTest08 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String nameString = request.getParameter("name");
		String introduction = request.getParameter("introduction");
		
		out.println("<html>"
				+ "<head>"
				+ "<title> 입사 지원 완료 </title>"
				+ "</head>"
				+ "<body>"
				+ "<b>" + nameString + "님 지원이 완료 되었습니다. </b>"
						+ "<hr>"
						+ "지원 내용 <br>"
						+ introduction
						+"</body>"
						+ "</html>");
	}

}
