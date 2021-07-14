package com.ledgy98.common;

import java.sql.Connection;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqulService = null;
	
	private String url;
	private String id;
	private String password;
	
	//접속 관리 객체
	private Connection conn;
	private Statement statement;
	
	//싱글턴
	public static MysqlService getInstance() {
		if(mysqulService == null) {
			mysqulService = new MysqlService();			
		}
		return mysqulService;
	}
	
	public MysqlService() {
		this.url = "jdbc:mysql://localhost:3306/web_ledgy98_test";
		this.id = "root";
		this.password = "018287";
	}
	
	//쿼리 수행 메소드 
	//업데이트 
	public int update(String query) {
		return this.statement.excuteUpdate(query);
	}
	// 쿼리 
	public ResultSet select(String query) {
		return this.statement.executeQuery(query);
	}
	//접속 끊기 메소드 
	public void disconee

}
