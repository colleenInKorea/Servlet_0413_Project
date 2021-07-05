<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test03 결과창</title>
</head>
<body>
	<% 
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		
		double H = Double.parseDouble(height);
		double W = Double.parseDouble(weight);
		
		double BMI = W/ ((H/100.0)*(H/100.0));
		
		String output = "";
		if(BMI <= 20){
			output = "저체중";
		}else if(21 <= BMI && BMI <= 25){
			output = "정상";
		}else if(26 <= BMI && BMI <= 30){
			output= "과체중";
		}else{
			output = "비만";
		}
	%>
	 <div class="container">
	 	<h3>BMI 측정 결과</h3>
	 	<h4> 당신은 <%= output %>입니다. </h4>
	 </div>
	
</body>
</html>