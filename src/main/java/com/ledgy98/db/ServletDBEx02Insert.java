package com.ledgy98.db;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ledgy98.common.MysqlService;

@WebServlet("/db/ex02_insert")
public class ServletDBEx02Insert extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		//파라미터 기반 입력 & 저장 
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String insertQuery = "insert into `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`, `introduce`, `createdAt`, `updatedAt`)\r\n"
				+ "value ('"+name +"', '"+yyyymmdd+"', '"+email+"', '"+introduce+"', now(), now());";
		try {
			mysqlService.update(insertQuery);
			mysqlService.disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//다른 페이지로 이동하게 만들기 
		//response 이용
		response.sendRedirect("/db/ex01.jsp");
		
	}
	

}
