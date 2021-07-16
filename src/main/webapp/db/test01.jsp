<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ledgy98.common.MysqlService" %>
<%@ page import ="java.util.*" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB test01 리스트</title>
	 <!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "SELECT * FROM `site` ORDER BY `id` DESC;";
		ResultSet resultSet = mysqlService.select(query);
	%>
	<div class="container">
		<table class="table ">
			<thead>
				<tr class="text-center">
					<th>번호</th>
					<th>사이트명</th>
					<th>사이트 주소</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<% while(resultSet.next()){	
				%>
				<tr class="text-center">
					<td><%= resultSet.getInt("id") %></td>
					<td><%= resultSet.getString("name") %></td>
					<td><%= resultSet.getString("address") %></td>
					<td><a href="/db/test01_delete?id=<%= resultSet.getInt("id") %>" class="btn btn-danger">delete</a></td>
					<%} %>				
				</tr>
			</tbody>
		</table>
		<br>
		<a role="submit" class="btn btn-outline-primary" href="/db/test01_1.jsp">새로운 사이트 추가 </a>
	</div>
	
</body>
</html>