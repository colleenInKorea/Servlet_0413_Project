package com.ledgy98.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ledgy98.common.MysqlService;

@WebServlet("/db/ex01")
public class ServletDBEx01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
	
		PrintWriter out = response.getWriter();
		
		//used_goods Insert
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
//		
//		String query = "insert into `used_goods`\r\n"
//				+ "(`title`, `price`, `description`, `sellerId`, `createdAt`, `updatedAt`)\r\n"
//				+ "value ('고양이 간식이 많아요', 2000, '입맛이 고급인 우리 고양이가 잘 안먹어요', 5, now(), now());";
//		
//		int count = 0;
//		
//		try {
//			count = mysqlService.update(query);
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
		
		//Select 수행
		String query = "SELECT * FROM `used_goods`";
		
		try {
			ResultSet resultSet = mysqlService.select(query);
			
			while (resultSet.next()) {
				out.println(resultSet.getInt("id"));
				out.println(resultSet.getString("title"));
				out.println(resultSet.getInt("price"));
				out.println(resultSet.getString("description"));
			}
			mysqlService.disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
