<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page02</title>
</head>
<body>
	<%
		for(int i = 0; i < 5; i++){
			out.println("Hello" + " <br>");
		}
	%>
	
	<% for(int i = 0; i < 5; i++) {%>
		<%= "สวัสดี<br>" %>
		<% } %>
</body>
</html>