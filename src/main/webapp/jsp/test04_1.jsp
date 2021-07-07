<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method 결과창</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<%
		int number1 = Integer.parseInt(request.getParameter("number1"));
		double number2 = Double.parseDouble(request.getParameter("number2"));
		String calculate = request.getParameter("calculate");
		
		double sum = 0;
		if(calculate.equals("+")){
			sum = number1 + number2;
		}else if(calculate.equals("-")){
			sum = number1 - number2;
		}else if(calculate.equals("x")){
			sum = number1 * number2;
		}else if(calculate.equals("/")){
			sum = number1 / number2 ;
		}
	
	%>
	
	<div>
		<div class="display-4">계산 결과
		<br><%=number1%><%=calculate%><%=number1%> = <%= sum %></div>
	</div>
</body>
</html>