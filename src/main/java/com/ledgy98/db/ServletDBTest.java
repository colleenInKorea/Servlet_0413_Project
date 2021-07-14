package com.ledgy98.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServletDBTest extends HttpServlet{
	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/web_ledgy98_test",
					"root",
					"root"
					);
		Statement statement = conn.createStatement();
		
		String insertQuery ="INSERT INTO `user`\r\n"
				+ "(`name`, `yyyymmdd`, `hobby`, `introduce`, `createdAt`, `updatedAt`, `email`)\r\n"
				+ "value ('이도경','19980219', '독서', '안녕하세요', now(), now(), 'leuj98@leuj98.com') ";
			
		String selectQuery = "SELECT*from`user`";
		ResultSet result =  statement.executeQuery(selectQuery);
		
		while (result.next()) {
			out.println(result.getInt("id"));
			out.println(result.getInt("name"));
			out.println(result.getInt("hobby"));
		}
			statement.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		out.println("DB연동 테스트 셋팅");
	}
}
