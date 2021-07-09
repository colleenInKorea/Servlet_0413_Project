<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test10 결과창 </title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
</head>
<body>
	<%
		//Calendar로 오늘을 저장후, 출력할 형태를 저장
		Calendar cr = Calendar.getInstance();
		SimpleDateFormat format = new SimpleDateFormat("dd");
		//해당 날짜를 1일로 설정
		cr.set(Calendar.DATE, 1);
		int dayOfWeek = cr.get(Calendar.DAY_OF_WEEK);
	%>
	<div>
		<h3 class="justify-content:center">2021-07</h3>
		<table class="table table-striped">
			<tr>
			<!-- 요일 설정 -->
			<th class="text-danger">일</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th class="text-info">토</th>
			</tr>
			<%-- 첫주 요일을 맞춰서 설정 --%>
			<tr>
			<%
				for(int i = 1; i < dayOfWeek; i++){
			%> <td></td>
			<%} %>
			<%
			for(int i = 1; i <= 3; i++){
					int date = Integer.parseInt(format.format(cr.getTime()));
			%>	<td><%= date %></td>
			<%	cr.add(Calendar.DATE, 1);
			}%>
			</tr>
			<%--이후의 날짜를 반복문으로 출력 --%>
			<% 
			for(int j= 1; j <= 4; j++){
			%>
				<tr>
				<%
				for(int i= 1; i <= 7; i++ ){
					
					int date = Integer.parseInt(format.format(cr.getTime()));
					%>
					<td><%=date%></td>
				<%
					cr.add(Calendar.DATE, 1);
				}
				%>
				</tr>
			<%} %>
		</table>
	</div>	
</body>
</html>