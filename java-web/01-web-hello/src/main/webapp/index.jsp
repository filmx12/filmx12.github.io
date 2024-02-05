<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Hello world</h1>
<h1>สวัสดี ชาวโลก</h1>
<h1>นายวีรภัทร  จันทร์เรือง</h1>
<h1><% out.println("IT");%></h1>
<%! int a = 5;%>
<h1><% out.println("a");%></h1>
<%! int b = 9; %>
<%= "Technicrayong" %>
<p><%= b %></p>
<p><%= a + b %></p>
<h1>menu</h1>
<a href="page01.jsp">page01</a>
<br>
<a href="page02.jsp">page02</a>
<br>
<a href="page03.jsp">page03</a>
</body>
</html>