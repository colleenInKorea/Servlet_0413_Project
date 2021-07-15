package com.ledgy98.db;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ledgy98.common.MysqlService;

@WebServlet("/db/test")
public class ServletDBTest extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		try {
			mysqlService.connection();
			
			String insertQuery = "INSERT INTO `user`\r\n"
					+ "(`name`, `yyyymmdd`, `hobby`, `introduce`, `createdAt`, `updatedAt`, `email`)\r\n"
					+ "VALUE ('김인규', '20011121', '멍때리기', '자기소개입니다', now(), now(), 'hagulu@hagulu.com');";
			
			int count = mysqlService.update(insertQuery);
			
			out.println("인서트 개수 : " + count);
			
			String selectQuery = "SELECT * FROM `user`";
			ResultSet result = mysqlService.select(selectQuery);
			// 0 -> 1 -> 2
			while(result.next()) {
				out.println(result.getInt("id"));
				out.println(result.getString("name"));
				out.println(result.getString("hobby"));
			}
			
			mysqlService.disconnect();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		out.println("DB 연동 테스트 셋팅");
	}
}