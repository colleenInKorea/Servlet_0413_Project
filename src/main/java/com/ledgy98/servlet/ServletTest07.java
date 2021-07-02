package com.ledgy98.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class ServletTest07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String searchString = request.getParameter("search");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		//출력 페이지 작성
		out.println("<html>"
				+ "<head>"
				+ "<title> Test 07 </title>"
				+ "</head>"
				+ "<body>"
				+ "<h3> 검색 결과 </h3>");
		// 서치와 그 이후 출력 방법
		// 리스트를 불러내는 방법 : 공부 필수 !!!!!!!
		for (int i = 0; i < list.size(); i++) {
			String text = list.get(i);
			if(text.contains(searchString)) {
				//서치한 단어 bold tag 추가 해서 강조
				text = text.replaceAll(searchString, "<b>"+ searchString +"</b>");
				//전체 출력
				out.println(
						 text 
						+ "<hr>");
			}
			
		}
		out.println("</body>"
				+ "</html>");
		
		
	}

}
