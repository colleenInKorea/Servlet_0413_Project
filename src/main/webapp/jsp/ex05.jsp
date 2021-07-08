<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex05 예제 창(Calender)</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<%	//Date 객체는 날짜와 시간을 저장하는 객체.
		// Calendar : Date 객체의 성질을 가지고 있으며, 날짜 계산에 특화 되어 있다.
		Calendar today = Calendar.getInstance();
		SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd hh:mm:ss");
		out.println(format.format(today.getTime()));
		%>
		<br>
		<%
		//어제 날짜 정리 
		today.add(Calendar.DATE, -100);
		out.println(format.format(today.getTime())+"<br>");
		today.add(Calendar.MONTH, -2);
		out.println(format.format(today.getTime()) + "<br>");
		today.add(Calendar.YEAR, -2);
		out.println(format.format(today.getTime()) + "<br>");
		today.add(Calendar.YEAR, 5);
		out.println(format.format(today.getTime()) + "<br>");
		today.add(Calendar.DATE, 200);
		out.println(format.format(today.getTime()) + "<br>");
		
	%>
</body>
</html>