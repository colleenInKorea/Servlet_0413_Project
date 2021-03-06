<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main artist page</title>

	<!-- bootstrap CDN link -->
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<style type="text/css">
		#wrap{width:1200px; height: 1000px; margin:auto}
		header{height:110px width:1200px}
		nav{ height : 50px}
		footer{height:40px}
		
		#iuPhoto{
			width:150px; height:150px; margin:5px;
		}
	</style>
</head>
<body>
	<%@ include file="data.jsp" %>
	
	<div id = "wrap">
		<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
		<section>
			<div class="border border-success d-flex justify-content-start algin-items-center">
				<img id = "iuPhoto"  alt="" src="<%= (String)artistInfo.get("photo")%>">
				<div style="margin:10px;">
					<span class="display-4 font-weight-bold"><%= artistInfo.get("name") %></span><br>
					<span class="font-italic"><%= artistInfo.get("agency") %></span><br>
					<span class="font-weight-light"><%= artistInfo.get("debute") %></span>
				</div>
			</div>
			<div >
				<br>
				<span class="font-weight-bold mt-10"> 곡 목록</span>
				<br>
				<table class="table text-center">
					<thead class="font-weight-bold">
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>엘범</th>
						</tr>
					</thead>
					<tbody>
						<% for(int i = 0; i < musicList.size(); i++){
								Map<String, Object> musicMap = musicList.get(i);
						%>	<tr>
								<td><a href="/jspTemplate/test02/test02_1.jsp?id=<%= musicMap.get("id") %>"><%= musicMap.get("id") %></a></td>
								<td><a href="/jspTemplate/test02/test02_1.jsp?id=<%= musicMap.get("id") %>"><%= musicMap.get("title") %></a></td>
								<td><a href="/jspTemplate/test02/test02_1.jsp?id=<%= musicMap.get("id") %>"><%= musicMap.get("album") %></a></td>
							</tr>
						<%} %>
					</tbody>
				</table>
			</div>
		</section>
		<jsp:include page="footer.jsp"/>
	
	</div>
</body>
</html>