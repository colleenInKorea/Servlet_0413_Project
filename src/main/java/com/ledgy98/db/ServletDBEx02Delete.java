package com.ledgy98.db;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ledgy98.common.MysqlService;

@WebServlet("/db/ex02_delete")
public class ServletDBEx02Delete extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String id = request.getParameter("id");
		
		String deleteQuery = "DELETE FROM `new_user` WHERE `id` = " + id +";";
		
		try {
			mysqlService.update(deleteQuery);
			mysqlService.disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("/db/ex01.jsp");
	}
	
}
