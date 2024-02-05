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
<title>14-web-Teacher</title>
</head>
<body class="" style="background-color: #FFFF99">

	

	<nav class="navbar" role="navigation" aria-label="main navigation">
		<div class="navbar-brand">
			<a class="navbar-item" href="https://bulma.io"> <img
				src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
			</a> <a role="button" class="navbar-burger" aria-label="menu"
				aria-expanded="false" data-target="navbarBasicExample"> <span
				aria-hidden="true"></span> <span aria-hidden="true"></span> <span
				aria-hidden="true"></span> <span aria-hidden="true"></span>
			</a>
		</div>

		<div id="navbarBasicExample" class="navbar-menu">
			<div class="navbar-start">
				<a class="navbar-item"> Home </a> <a class="navbar-item"> Home </a>
				<a class="navbar-item"> Documentation </a>

				<div class="navbar-item has-dropdown is-hoverable">
					<a class="navbar-link"> More </a>



				</div>
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



	<div class="tabs is-centered  has-text-weight-bold"
		style="background-color: #87CEFA">
		<%@ include file="menu.html"%>
	</div>




	<form action="save-teacher.jsp" method="post"
		enctype="multipart/form-data">
	
		<div class="columns">
			<div class="column is-8">
				<div align="center">
					<div class="container is-max desktop">
						<div class="card">
							<div class="card-content">
								<div class="content">
									<label class="label">ข้อมูลครู</label>
									<div class="field is-horizontal">
										<div class="field-label is-normal">
											<label class="label">เลขบัตรประชาชน</label>
										</div>
										<div class="field-body">
											<div class="field">
												<p class="control is-expanded has-icons-left">
													<input class="input" type="text" placeholder="ID Card" name="idcard" id="idcard">
													<span class="icon is-small is-left"> <i
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
											<div class="field">
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
													<input class="input" type="text" placeholder="First Name" name="fname" id="fname">
													<span class="icon is-small is-left"> <i
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
													<input class="input" type="text" placeholder="Last Name" name="lname" id="lname">
													<span class="icon is-small is-left"> <i
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
														name="gender" id="gender" value=0> ชาย
													</label> <label class="radio"> <input type="radio"
														name="gender" id="gender" value=1> หญิง
													</label>
												</div>
											</div>
										</div>
									</div>

									<div class="field is-horizontal">
										<div class="field-label is-normal">
											<label class="label">แผนก</label>
										</div>
										<div class="field-body">
											<div class="field">
												<div class="control">
													<div class="select is-fullwidth">
														<select name="dept" id="dept">
															<option>เทคโนโลยีสารสนเทศ</option>
															<option>เทคโนโลยีธุรกิจดิจิทัล</option>
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
													<button class="button is-primary" type="submit">SUMBIT</button>
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

									<div class="file has-name is-boxed is-fullwidth">
										<label class="file-label"> <input class="file-input"
											type="file" name="pic" id="pic"> <span
											class="file-cta"> <span class="file-icon"> <i
													class="fas fa-upload"></i>
											</span> <span class="file-label"> Choose a file… </span>
										</span> <span class="file-name" id="fln"> File Name </span>
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
		document.getElementById("pic").onchange = function() {
			document.getElementById("fln").innerHTML = this.files[0].name;
			document.getElementById('img1').src = URL.createObjectURL(event.target.files[0]);
		};
	</script>

</body>
</html>