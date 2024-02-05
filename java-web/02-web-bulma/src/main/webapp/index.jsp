<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma-rtl.min.css">
<meta charset="UTF-8">
<title>ตัวอย่างที่-01-Java-Form-Get</title>
</head>
<!--วีรภัทร จันทร์เรือง  -->
<boby>
<section class="section">
		<div class="container">
<div class="container">
			<article class="section">
			<article class="panel is-primary">
				<p class="panel-heading has-text-centered">ตัวอย่างที่-01-Java-Form-Get</p>
			</article>
			<div class="tabs is-centered has-background-primary">
				<ul>
					<li class="active"><a href="index.jsp"
						class="has-text-white has-text-weight-bold">page01</a></li>
					<li><a href="page02.jsp" class="has-text-white has-text-weight-bold">page02</a></li>
					<li><a href="page03.html" class="has-text-white has-text-weight-bold">page03</a></li>
					<li><a href="page04.jsp" class="has-text-white has-text-weight-bold">page04</a></li>
					<li><a href="page05.jsp" class="has-text-white has-text-weight-bold">page05</a></li>
					<li><a href="page06.jsp" class="has-text-white has-text-weight-bold">page06</a></li>
					<li><a href="page07.jsp" class="has-text-white has-text-weight-bold">page07</a></li>
					
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
								<form method="get">
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