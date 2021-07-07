<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String date = request.getParameter("date");
		
		Date now = new Date();
		SimpleDateFormat format = new SimpleDateFormat("오늘의 날짜 yyyy년 MM월 dd일 ");
		SimpleDateFormat formatter = new SimpleDateFormat("현재 시간 hh시 mm분 ss초");
		String formDate = "";
		
		if(date.equals("now")){
			formDate = formatter.format(now);
		}else{
			formDate = format.format(now);
		}
	%>
	
	<%= formDate %>
</body>
</html>