<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test10 쌤 풀이</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
</head>
<body>
<%	
	
	//"2010-10"
	//택스트로 date객체에 입력 
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM");
	
	Date date = formatter.parse("2010-11");
	//2010년 10월; 예시;
	Calendar cal = Calendar.getInstance();
	int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	/*
	cal.set(Calendar.YEAR, 2010);
	cal.set(Calendar.MONTH, 9);
	cal.set(Calendar.DATE, 1);
	*/
	cal.setTime(date);
	
	int dayNumber = cal.get(Calendar.DAY_OF_WEEK);
	
%>
	<div class="container">
		<h3 class="text-center">2010-10</h3>
		<table class="table table-striped text-center">
			<thead>
				<tr>
				<th class="text-danger">일</th>
				<th>월</th>
				<th>화</th>
				<th>수</th>
				<th>목</th>
				<th>금</th>
				<th class="text-info">토</th>
				</tr>
			</thead>
			<tbody>
				<%
				//월요일이 1일 일때 -> 0123456
				//화요일이 1일 일때 -> -1012345
				//수요일이 1일 일때 -> -2-101234
				int day = 2- dayNumber; 
				for(int j = 1; j <= 6; j++){%>
					<tr>
					<% 
						for(int i =1; i<= 7; i++){
					
					%>
						<td class="display-4">
						<% if(day > 0){
							out.println(day);	
						}%>
						</td>
						<%	
						if(day == lastDay){
							break;
						}	day++;
						} %>
					</tr>
				<% if(day == lastDay){
					break;
					}
				} %>
			</tbody>
		</table>
	</div>
</body>
</html>