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
//		
//		int count = 0;
//		try {
//			count = mysqlService.update(query);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		String query = "SELECT * FROM `real_estate` limit 10";
		
		try {
			ResultSet resultSet = mysqlService.select(query);
			
			while (resultSet.next()) {
				out.print("메물 주소 : ");
				out.print(resultSet.getString("address") + ", 타입: ");
				out.print(resultSet.getString("type") + ", 면적 : ");
				out.print(resultSet.getInt("area"));
				out.println();
			}
			mysqlService.disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
