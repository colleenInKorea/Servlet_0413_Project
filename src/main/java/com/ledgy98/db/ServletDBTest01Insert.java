package com.ledgy98.db;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ledgy98.common.MysqlService;

@WebServlet("/db/test01_insert")
public class ServletDBTest01Insert extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
	
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String insertQuery = "insert into `site`\r\n"
				+ "(`name`, `address`, `createdAt`, `updatedAt`)\r\n"
				+ "value ('"+name +"', '"+address+"', now(), now());";
		try {
			mysqlService.update(insertQuery);
			mysqlService.disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//다른 페이지로 이동하게 만들기 
		//response 이용
		response.sendRedirect("/db/test01.jsp");
		
		
	}

}
