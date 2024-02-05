<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
	integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma-rtl.min.css">
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
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

		<div class="navbar-end">
			<div class="navbar-item">
				<div class="buttons">
					<a class="button is-primary"> <strong>Sign up</strong>
					</a> <a class="button is-light"> Log in </a>
				</div>
			</div>
		</div>
		</div>
	</nav>
	<form action= "save-teacher.jsp" method="get" enctype="multipart/form-data">
		<article class="panel is-link">
			<div align="center">
				<p class="panel-heading">ข้อมูลครู</p>
				<p class="panel-tabs">
				<div align="center">


					<div class="columns">
						<div class="column is-8">
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
															<p class="control is-expanded has-icons-left">
																<input class="input" type="text"> <span
																	class="icon is-small is-left"> <i
																	class="fas fa-user"></i>
																</span>
															</p>
														</div>
													</div>
												</div>

												<div class="field is-horizontal">
													<div class="field-label is-normal">
														<label class="label">คำนำหน้า</label>
													</div>
													<div class="field-body">
														<div class="field ">
															<div class="control">
																<div class="select is-fullwidth">
																	<select name="tname" id="tname">
																		<option>นาย</option>
																		<option>นางสาว</option>
																	</select>
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
															<p class="control is-expanded has-icons-left">
																<input class="input" type="text" name="fname" id="fname"> <span
																	class="icon is-small is-left"> <i
																	class="fas fa-user"></i>
																</span>
															</p>
														</div>
													</div>
												</div>

												<div class="field is-horizontal">
													<div class="field-label is-normal">
														<label class="label">นามสกุล</label>
													</div>

													<div class="field-body">
														<div class="field">
															<p class="control is-expanded has-icons-left">
																<input class="input" type="text" name="lname" id="lname"> <span
																	class="icon is-small is-left"> <i
																	class="fas fa-user"></i>
																</span>
															</p>
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
																<label class="radio"> <input type="radio"
																	name="genber" id="gender" value=0> ชาย
																</label> <label class="radio"> <input type="radio"
																	name="genber" id="gender" value=1> หญิง
																</label>
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
															<div class="control">
																<div class="select is-fullwidth">
																	<select name="dept" id="dept">
																		<option>เทคโนโลยีสารสนเทศ</option>
																		<option>ช่างกล</option>
																	</select>
																</div>
															</div>
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
																<button class="button is-primary" type="sumbit">SUMBIT</button>
																<button class="button is-danger" type="reset">RESET</button>
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
													<img src="https://bulma.io/images/placeholders/128x128.png">
												</figure>
												
												<div class="file is-centered is-boxed is-success has-name">
													<label class="file-label"> <input
														class="file-input" type="file" name="pic" id="pic"> 
														<span
														class="file-cta"> <span class="file-icon">
														<i class="fas fa-upload"></i>
														</span> <span class="file-label"> Centered file </span>
													</span> <span class="file-name" id="fln"> File name </span>
															<br>
															<br></div></div>
													</label>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					</form>
					<script type="text/javascript">
					document.getElementById("pic").onchange = function(){
						document.getElementByid("fln").innerHTML = this.files[0].name;
					};
					</script>
					
					
</body>
</html>