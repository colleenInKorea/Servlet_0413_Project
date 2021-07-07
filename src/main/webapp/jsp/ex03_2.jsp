<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method / form 결과</title>
</head>
<body>
	<%
		String hobby = request.getParameter("hobby");
		String pet = request.getParameter("pet");
		String[] foodArray = request.getParameterValues("food");
		String fruit = request.getParameter("fruit");
	%>
	
		<table border="1">
			<tr>
			 <th>취미 </th>
			 <td> <%= hobby %> </td>
			</tr>
			<tr>
			 <th>반려동물 </th>
			 <td> <%= pet %> </td>
			</tr>
			<tr>
			 <th>음식 </th>
			 <%-- pizza, pupa --%>
			 <td> 
			 	<%	
			 		String foodString = "";
			 		if(foodArray != null){
				 	for(String food: foodArray){
				 		foodString += food +", ";
				 	}
			 		
				 	//제일 마지막, 지우기 
				 	//abc -> ab
				 	foodString = foodString.substring(0, foodString.length()-2);

			 		}
			 	%>
			 	<%= foodString %>
			  </td>
			</tr>
			<tr>
			 <th>과일 </th>
			 <td> <%= fruit %> </td>
			</tr>
		
		</table>
</body>
</html>