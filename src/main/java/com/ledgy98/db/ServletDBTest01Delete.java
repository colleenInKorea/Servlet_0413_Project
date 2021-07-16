package com.ledgy98.db;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ledgy98.common.MysqlService;

@WebServlet("/db/test01_delete")
public class ServletDBTest01Delete extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String id = request.getParameter("id");
		
		String deleteQuery = "DELETE FROM `site` WHERE `id` = " + id +";";
		
		try {
			mysqlService.update(deleteQuery);
			mysqlService.disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("/db/test01.jsp");
	}
		
	}
	

