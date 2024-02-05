<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Mitr:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
	integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma-rtl.min.css">
<title>ตัวอย่างที่-14-Teacher-Web</title>
</head>
<body>
<section class="section">
		<nav class="breadcrumb is-centered has-background-link is-large"
			aria-label="breadcrumbs">
			<%@ include file="menu.html"%>
		</nav>
	</section>


	<div class="container is-max-desktop">
		<div
			class="box has-text-centered has-text-weight-bold is-size-4 has-background-info has-text-white">ข้อมูลครู</div>
		<div class="notification is-warning p-5">


			<form action="save-edit-teacher.jsp" method="post"
				enctype="multipart/form-data">

				<div class="columns">
					<div class="column is-7">
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
													<input class="input is-primary" type="text"
														placeholder="ID Card" name="idcard" id="idcard"
														value=<%=request.getParameter("idcard")%> readonly>
													<span class="icon is-small is-left"> <i
														class="fas fa-id-badge"></i>
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
													<div class="select is-fullwidth is-primary">
														<select name="tname" id="tname">
															<option>โปรดเลือก</option>
															<option
																<%if (request.getParameter("tname").equals("นาย")) {%>
																selected <%}%>>นาย</option>
															<option
																<%if (request.getParameter("tname").equals("นาง")) {%>
																selected <%}%>>นาง</option>
															<option
																<%if (request.getParameter("tname").equals("นางสาว")) {%>
																selected <%}%>>นางสาว</option>
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
													<input class="input is-primary" type="text"
														placeholder="First Name" name="fname" id="fname"
														value=<%=request.getParameter("fname")%>> <span
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
													<input class="input is-primary" type="text"
														placeholder="Last Name" name="lname" id="lname"
														value=<%=request.getParameter("lname")%>> <span
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
										<div class="field-body" id="bb">
											<div class="field is-narrow pl-3">
												<div class="control">
													<label class="radio"> <input type="radio"
														name="gender" id="gender" value=0
														<%if (Integer.valueOf(request.getParameter("gender")) == 0) {
	out.println("checked");
}%>>
														ชาย
													</label> <label class="radio"> <input type="radio"
														name="gender" id="gender" value=1
														<%if (Integer.valueOf(request.getParameter("gender")) == 1) {
	out.println("checked");
}%>>
														หญิง
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
													<div class="select is-primary is-fullwidth">
														<select name="dept" id="dept">
															<option>โปรดเลือก</option>
															<option
																<%if (request.getParameter("dept").equals("ช่างกล")) {%>
																selected <%}%>>ช่างกล</option>
															<option
																<%if (request.getParameter("dept").equals("เทคโนโลยีสารสนเทศ")) {%>
																selected <%}%>>เทคโนโลยีสารสนเทศ</option>
															<option
																<%if (request.getParameter("dept").equals("เทคโนโลยีธุรกิจดิจิทัล")) {%>
																selected <%}%>>เทคโนโลยีธุรกิจดิจิทัล</option>
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
													<button class="button is-primary" type="submit">Submit</button>
													<button class="button is-primary" type="reset">Reset</button>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
					<div class="column is-5">
						<div class="card">
							<div class="card-content">
								<div class="content">
									<figure class="image container is-256x256">
										<img id="img1" src="./pic/<%=request.getParameter("pic")%>">
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


			</form>



		</div>
	</div>
	<script type="text/javascript">
		document.getElementById("pic").onchange = function() {
			document.getElementById("fln").innerHTML = this.files[0].name;
			document.getElementById('img1').src = URL
					.createObjectURL(event.target.files[0]);
		};
	</script>
	
</body>
</html>