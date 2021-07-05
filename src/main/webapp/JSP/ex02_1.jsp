<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get method</title>
</head>
<body>
	<%
		//파라미터 얻어 오기 
		//request 객체를 애시당초 가지고 있다. 
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
	%>
	<b>ID : </b><%= userId %>
	<b>name : </b><%=name %>
	<b>age : </b><%=age %>
</body>
</html>