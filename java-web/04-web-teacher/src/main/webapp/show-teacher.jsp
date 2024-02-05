<%@ page import="java.sql.*"%>
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
<script src="https://kit.fontawesome.com/59d76f3583.js"
	crossorigin="anonymous"></script>
<title>ตัวอย่างที่-14-Teacher-Web</title>
</head>
<body class="" style="background-color: #FFFF99">

	<section class="section">
		<nav class="breadcrumb is-centered has-background-link is-large"
			aria-label="breadcrumbs">
			<%@ include file="menu.html"%>
		</nav>
	</section>
	
<div class="container">
		<div
			class="box has-text-centered has-text-weight-bold is-size-4 has-background-link has-text-white">ข้อมูลครู</div>
		<div class="notification is-warning p-5">
		
	
	
	<form action="">

				<div class="columns">
					<div class="column">
						<div class="card">
							<div class="card-content">
								<div class="content">
									<%
									Connection connect = null;
									Statement s = null;
									try {
										Class.forName("com.mysql.jdbc.Driver");
										connect = DriverManager.getConnection("jdbc:mysql://localhost/itrayong" + "?user=root&password=");
										s = connect.createStatement();
										String sql = "SELECT * FROM teacher";
										ResultSet rec = s.executeQuery(sql);
									%>
									<table
										class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth has-background-primary-light">
										<thead>
											<tr class="is-selected">
												<th class="has-text-centered">เลขบัตรประชาชน</th>
												<th class="has-text-centered">คำนำหน้า</th>
												<th class="has-text-centered">ชื่อ</th>
												<th class="has-text-centered">นามสกุล</th>
												<th class="has-text-centered">เพศ</th>
												<th class="has-text-centered">แผนก</th>
												<th class="has-text-centered">รูป</th>
												<th class="has-text-centered"></th>
											</tr>
										</thead>
										<%
										while ((rec != null) && (rec.next())) {
										%>
										<tr>
											<td class="has-text-centered"><a href='info-teacher.jsp?idcard=<%=rec.getString("idcard")%>'><%=rec.getString("idcard")%></a></td>
											<td class="has-text-centered"><%=rec.getString("tname")%></td>
											<td><%=rec.getString("fname")%></td>
											<td><%=rec.getString("lname")%></td>
											<td class="has-text-centered">
												<%
												if (rec.getBoolean("gender") == false) {
													out.println("ชาย");
												} else {
													out.println("หญิง");
												}
												%>
											</td>
											<td><%=rec.getString("dept")%></td>
											<td class="has-text-centered"><a
												href='./pic/<%=rec.getString("pic")%>'><%=rec.getString("pic")%></a>
											</td>
											<td class="has-text-centered">
												<a class="button" href='edit-teacher.jsp?idcard=<%=rec.getString("idcard")%>&tname=<%=rec.getString("tname")%>&fname=<%=rec.getString("fname")%>&lname=<%=rec.getString("lname")%>&gender=<%=rec.getString("gender")%>&dept=<%=rec.getString("dept")%>&pic=<%=rec.getString("pic")%>'>แก้ไข</a>
												<a class="button" onclick="return confirm('Delete Data.');" href='delete-teacher.jsp?idcard=<%=rec.getString("idcard")%>&pic=<%=rec.getString("pic")%>'>ลบ</a>
											</td>
										</tr>
										<%
										}
										%>
										<tbody>
										</tbody>
									</table>
									<%
									} catch (Exception e) {
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
		};
	</script>
	
</body>
</html>