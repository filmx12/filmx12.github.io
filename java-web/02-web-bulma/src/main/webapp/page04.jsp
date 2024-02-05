<%@page
	import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma-rtl.min.css">
<title>ตัวอย่างที่-04-Java-Form-Get</title>
</head>
<body>

	<section class="section">
		<div class="container">
			<article class="panel is-link">
				<p class="panel-heading has-text-centered">ตัวอย่างที่-04-Java-Form-Get</p>
			</article>
			<div class="tabs is-centered has-background-danger">
				<ul>
					<li class="active"><a href="index.jsp"
						class="has-text-white has-text-weight-bold">page01</a></li>
					<li><a class="has-text-white has-text-weight-bold" href="page02.jsp">page02</a></li>
					<li><a class="has-text-white has-text-weight-bold" href="page03.html">page03</a></li>
					<li><a class="has-text-white has-text-weight-bold" href="page04.jsp">page04</a></li>
				</ul>
			</div>
			<!-- 			<h1 class="title">Hello World</h1> -->
			<!-- 			<p class="subtitle"> -->
			<!-- 				My first website with <strong>Bulma</strong>! -->
			<!-- 			</p> -->
			<div align="center">
				<div class="column is-6">
					

					<br>

					<div class="card has-background-warning">
						<div class="card-content">
							<div class="content has-text-white has-text-weight-bold">
								<%
								request.setCharacterEncoding("UTF-8");
								if (request.getParameter("fname") != null && request.getParameter("lname") != null) {
									out.println(request.getParameter("fname") + " " + request.getParameter("lname"));
								}
								%>


							</div>
						</div>
					</div>

				</div>
			</div>


		</div>




	</section>
</body>
</html>