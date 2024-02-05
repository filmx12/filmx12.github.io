<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma-rtl.min.css">
<meta charset="UTF-8">
<title>ตัวอย่างที่-02-Java-Form-Get</title>
</head>
<!--วีรภัทร จันทร์เรือง -->
<body>
<section class="section">
		<div class="container">
		<article class="panel is-primary">
  		<p class="panel-heading" align="center">
  		ตัวอย่างที่-02-Java-Form-post
  		</p>
  		</article>
			<div class="tabs is-centered has-background-primary">
	
				<ul>
				
					<li class="active"><a class="has-text-black" href="page1.jsp">page01</a></li>
					<li><a class="has-text-black" href="page02.jsp">page02</a></li>
					<li><a class="has-text-black" href="page03.html">page03</a></li>
					<li><a class="has-text-black" href="page04.jsp">page04</a></li>
				</ul>
			</div>
			<!-- 			<h1 class="title">Hello World</h1> -->
			<!-- 			<p class="subtitle"> -->
			<!-- 				My first website with <strong>Bulma</strong>! -->
			<!-- 			</p> -->
			<div align="center">
				<div class="column is-6">
					<div class="card has-background-warning" align="Left">
						<div class="card-content">
							<div class="content">
								<form method="post">
									<div class="field">
										<label class="label">FName</label>
										<div class="control">
											<input class="input is-success" name="fname" type="text"
												placeholder="Text input">
										</div>

									</div>

									<div class="field">
										<label class="label">lName</label>
										<div class="control">
											<input class="input is-success" name="lname" type="text"
												placeholder="Text input">
										</div>
									</div>

									<input class="button is-success" type="submit" value="Submit">
									<input class="button is-danger" type="reset" value="Reset">
								</form>


							</div>
						</div>
					</div>

					<br>

					<div class="card has-background-primary">
						<div class="card-content">
							<div class="content">
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