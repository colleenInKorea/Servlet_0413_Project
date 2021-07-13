<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music Info page</title>

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
		
		#albumPhoto{
			width:150px; height:150px; margin:15px;
		}
	</style>
</head>
<body>
		<%
		int id = Integer.parseInt(request.getParameter("id")) ;%>
		<%@ include file="data.jsp" %>
	<div id = "wrap">
		<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
		<section>
			<div class="border border-success d-flex justify-content-start align-items-center"> 
				<% for(int i = 0; i < musicList.size(); i++){
					Map<String, Object> musicMap = musicList.get(i);
					if(musicMap.get("id").equals(id)){
				%>
				<img id = "albumPhoto"  alt="" src="<%= (String)musicMap.get("thumbnail") %>">
				<div style="margin:10px;">
					<span class="display-4 font-weight-light"><%= musicMap.get("title") %></span><br>
					<span class="display-6 text-success font-weight-bold"><%= musicMap.get("singer") %></span><br>
					<span class="display-6 font-weight-light">앨범 : <%= musicMap.get("album") %></span><br>
					<span class="display-6 font-weight-light">재생시간 : <%= (Integer)musicMap.get("time")/60 %>:<%= (Integer)musicMap.get("time")%60 %></span><br>
					<span class="display-6 font-weight-light">작곡가 : <%= musicMap.get("composer") %></span><br>
					<span class="display-6 font-weight-light">작사가 : <%= musicMap.get("lyricist") %></span>
				</div>
				<%}
				}
				%>
			</div>
			<br>
			<div >
				<h4 >가사</h3>
				<hr>
				<h5>가사정보 없음</h4>
			</div>
			
		</section>
		<jsp:include page="footer.jsp"/>
	
	</div>
</body>
</html>