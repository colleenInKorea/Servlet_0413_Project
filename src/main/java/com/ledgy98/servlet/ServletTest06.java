package com.ledgy98.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class ServletTest06 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		String addressString = request.getParameter("address");
		String cardString = request.getParameter("card");
		String priceString = request.getParameter("price");
		
		int price = Integer.parseInt(priceString);
		
		out.println("<html>"
				+ "<head>"
				+ "<title> get method와 form 1</title>"
				+ "</head>"
				+ "<body>");
		if(addressString.contains("서울시") && !cardString.contains("신한카드")) {
			out.println("<h3>" + addressString + "</h3>"
					+ "<hr>"
					+ "결제 금액 : " + price );
					
		}else if(!addressString.contains("서울시")) {
			out.println( "<h3> 해당 지역은 배달 불가 지역입니다. </h3>"
					+ "<hr>");
			
		}else if(cardString.contains("신한카드")) {
			out.println("<h3> 결제 불가한 카드 입니다. <br>"
					+ "다른 카드로 시도해 주세요 </h3>"
					+ "<hr>");
					
			
		}
		out.println("</body>"
				+ "</html>");
		
		
	}

}
