<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01</title>
</head>
<body>
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
	%>
	<b> 점수들의 평균은 </b> <u> <%= sum / scores.length %></u>
	<br>
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int score = 0;
	for(int i = 0; i < scoreList.size(); i++){
		if(scoreList.get(i).equals("O")){
			score += 10;
		}
	}
	%>
	
	<b>점수표의 점수는 </b> <u><%= score %></u>
	<br>
	
	<%!
		public static int getSum (int number){
		 int sum = 0;
		for(int i = 1; i <= number; i++ ){
			sum += i ;
		}
		return sum;
	}
		
	%>
	
	<b> 50까지의 합의 결과는 </b> <u><%= getSum(50) %></u>
	<br>
	
	<%
		String birthDay = "20010820";
		int birth = Integer.parseInt(birthDay.substring(0, 4));
	%>
	<h4>
	 <%= birthDay %>의 나이는 <%= 2022-birth %>
	</h4>
</body>
</html>