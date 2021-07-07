<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method2 결과 창</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<%
		int number1 = Integer.parseInt(request.getParameter("number1"));
		String[] unionArray = request.getParameterValues("union");
	%>
	<div class="container">
		<h3>변환결과</h3>
		<h4><%=number1 %>cm</h4>
		<hr>
		<h4>
			<%
				for(String union: unionArray){
					if(union.equals("inch")){
							out.println((number1 * 0.393701) +"inch <br>") ;
							
					}
					if(union.equals("yard")){
							out.println((number1 * 0.010936) +"yd <br>") ;
							
					}
					if(union.equals("fit")){
							out.println((number1 * 0.032808) +"ft <br>") ;
							
					}
					if(union.equals("meter")){
							out.println((number1 * 0.01) +"m <br>") ;
							
					}
				}
		
			%>
		
		</h4>
	
	
	</div>
	
</body>
</html>