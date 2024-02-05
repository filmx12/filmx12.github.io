<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
	integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma-rtl.min.css">

<title>ตัวอย่างที่14-Teacher-Web</title>
</head>
<body>
	<nav class="navbar" role="navigation" aria-label="main navigation">
		<div class="navbar-brand">
			<a class="navbar-item" href="https://bulma.io"> <img
				src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
			</a> <a role="button" class="navbar-burger" aria-label="menu"
				aria-expanded="false" data-target="navbarBasicExample"> <span
				aria-hidden="true"></span> <span aria-hidden="true"></span> <span
				aria-hidden="true"></span>
			</a>
		</div>

		<div id="navbarBasicExample" class="navbar-menu">
			<div class="navbar-start">
				<%@include file="menu.html" %>
			</div>
		</div>

		
		</div>
	</nav>
	
	<div class="container is-max-desktop">
		<div
			class="box has-text-centered has-text-weight-bold is-size-4 has-background-info has-text-white">ข้อมูลครู</div>
		<div class="notification is-warning p-5">
		
	<form action="">
												<%
				Connection connect = null;
				Statement s = null;
				try {
					Class.forName("com.mysql.jdbc.Driver");
					connect = DriverManager.getConnection("jdbc:mysql://localhost/itrayong" + "?user=root&password=");
					s = connect.createStatement();
					String sql = "SELECT * FROM teacher WHERE idcard = " + request.getParameter("idcard");

					//out.println(sql);

					ResultSet rec = s.executeQuery(sql);

					while ((rec != null) && (rec.next())) {
				%>

					<div class="columns">
						<div class="column is-7">
							<div align="center">
								<div class="container is-max desktop">
									<div class="card">
										<div class="card-content">
											<div class="content">

												<div class="field is-horizontal">
													<div class="field-label is-normal">
														<label class="label">เลขบัตรประชาชน</label>
													</div>
													<div class="field-body">
														<div class="field">
																<div class="box"><%=rec.getString("idcard")%></div> 
														</div>
													</div>
												</div>

												<div class="field is-horizontal">
													<div class="field-label is-normal">
														<label class="label">คำนำหน้า</label>
													</div>
													<div class="field-body">
														<div class="field ">
															<div class="box"><%=rec.getString("tname")%></div> 
																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="field is-horizontal">
													<div class="field-label is-normal">
														<label class="label">ชื่อ</label>
													</div>

													<div class="field-body">
														<div class="field">
															<div class="box"><%=rec.getString("fname")%></div> 
														</div>
													</div>
												</div>

												<div class="field is-horizontal">
													<div class="field-label is-normal">
														<label class="label">นามสกุล</label>
													</div>

													<div class="field-body">
														<div class="field">
															<div class="box"><%=rec.getString("lname")%></div> 
														</div>
													</div>
												</div>

												<div class="field is-horizontal">
													<div class="field-label">
														<label class="label">เพศ</label>
													</div>
													<div class="field-body">
														<div class="field is-narrow">
															<div class="control">
																<div class="box"><%
				if (rec.getBoolean("gender") == true) {
					out.println("ชาย");
				} else {
					out.println("หญิง");
				}
				%></div> 
															</div>
														</div>
													</div>
												</div>

												<div class="field is-horizontal">
													<div class="field-label is-normal">
														<label class="label">เเผนก</label>
													</div>
													<div class="field-body">
														<div class="field ">
															<div class="box"><%=rec.getString("dept")%></div> 
														</div>
													</div>
												</div>

												<div class="field is-horizontal">
													<div class="field-label">
														<!-- Left empty for spacing -->
													</div>
													<div class="field-body">
														<div class="field">
															<div class="control">
																
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="column is-4">
							<div align="center">
								<div class="container is-max desktop">
									<div class="card">
										<div class="card-content">
											<div class="content">
											
												<figure class="image is-128x128">
													<img src="pic/<%=rec.getString("pic")%>">
												</figure>
												
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<%} catch (Exception e) {
											// TODO Auto-generated catch block
											out.println(e.getMessage());
											e.printStackTrace();
											}

											try {
											if (s != null) {
												s.close();
												connect.close();
											}
											} catch (SQLException e) {
											// TODO Auto-generated catch block
											out.println(e.getMessage());
											e.printStackTrace();
											}
											%>
					</form>
					<script type="text/javascript">
					document.getElementById("pic").onchange = function(){
						document.getElementByid("fln").innerHTML = this.files[0].name;
					};
					</script>
					
					
</body>
</html>