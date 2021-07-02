<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP ex01</title>

</head>
<body>
	<%
	// 올 주서처리 가능  신기 하네 .. 
	
		int sum = 0; 
		for(int i = 0; i <= 10; i++ ){
			sum += i;
		}
	
	%>
	<b>합계는 </b> <u> <%= sum %></u>
	<br>
	<input type="text" value="<%= sum %>">
	<br>
	
	<%
		List<String> animal = new ArrayList<>();
		animal.add("dog");
	%>
	<b><%= animal.get(0) %></b>
	<br>
	<%-- 정의 하는 것 --%>
	
	<%!
		private int num = 100;
		public String getHelloWorld(){
		return "Hello World";
	}
	
	%>
	
	<%= getHelloWorld() %>
	<%= num* 10 + 123 %>
</body>
</html>