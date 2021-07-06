<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post method/ form tag</title>
</head>
<body>
	<form action="/jsp/ex03_2.jsp" method="post">
		1.취미가 무엇인가요?
		<br>
		<input type="text" name="hobby">
		<br><br>
		2.강아지 or 고양이 or 고슴도치 
		<br>
		<label>강아지<input type="radio" name= "pet" value = "dog"></label>
		<label>고양이<input type="radio" name= "pet" value = "cat"></label>
		<label>고슴도치<input type="radio" name= "pet" value = "hedgehog"></label>
		<br><br>
		3.다음중 선호하는 것을 고르시오.
		<br>
		<label>민트 초코<input type="checkbox" name="food" value ="mincho"></label>
		<label>하와이안 피자<input type="checkbox" name="food" value ="pizza"></label>
		<label>번데기<input type="checkbox" name="food" value ="pupa"></label>
		<br><br>
		4.종아 하는 과일을 선택하세요.
		<select name="fruit">
			<option value="apple">사과 </option>
			<option value="grape">포도 </option>
			<option value="peach">복숭아 </option>
			<option value="banana">바나나</option>
		</select>
		<br>
		<input type="submit" value="submit">
		
	
	</form>
	
	
</body>
</html>