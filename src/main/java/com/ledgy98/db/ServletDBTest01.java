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

@WebServlet("/db/test01")
public class ServletDBTest01 extends HttpServlet {
	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
//		String query = "insert into `real_estate`\r\n"
//				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)\r\n"
//				+ "value ( 3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null, now(), now());";
		
//		int count = 0;
//		try {
//			count = mysqlService.update(query);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		String query = "SELECT * FROM `real_estate`";
		
		try {
			ResultSet resultSet = mysqlService.select(query);
			
			while (resultSet.next()) {
				out.println(resultSet.getInt("realtorId"));
				out.println(resultSet.getString("address"));
				out.println(resultSet.getString("type"));
				out.println(resultSet.getInt("price"));
				out.println(resultSet.getInt("rentPrice"));
			}
			mysqlService.disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
