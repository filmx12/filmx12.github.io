<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma-rtl.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>ตัวอย่างที่7-java-select -form-MySQL</title>
</head>
<body>
<section class="section">
		<div class="container"></div>
<div class="container"></div>
			<article class="section"></article>
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
					<li><a href="page05.html" class="has-text-white has-text-weight-bold">page05</a></li>
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
                
					<div class="card" style="background : #F7ECDE;">
						<div class="card-content">
							<div class="content has-text-white has-text-weight-bold">
								
								<div class="table-container">
								<%
	Connection connect = null;
	Statement s = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");

		connect =  DriverManager.getConnection("jdbc:mysql://localhost/itrayong" +
				"?user=root&password=");
		
		s = connect.createStatement();
		
		String sql = "SELECT * FROM  student";
		
		ResultSet rec = s.executeQuery(sql);
		%>
							<table class="table is bordered">
								<!-- Your table content-->
								<thead>
									<tr class=" has-background-warning">
										<th class="has-text-light">รหัสนักศึกษา</th>
										<th class="has-text-light">ชื่อ
									     <th class="has-text-light">นามสกุล</th>
									</tr>
								</thead>
								<%
                                            while ((rec != null) && (rec.next())) {
                                            %>
                                            <tr>
                                                <td class="has-background-warning-light"><%=rec.getString("sid")%></td>
                                                <td><%=rec.getString("fname")%></td>
                                                <td class="has-background-warning-light"><%=rec.getString("lname")%></td>
                                            </tr>
                                            <%
                                            }
                                            %>
                                        </tbody>
                                    </table>
                                    <%
                                    } catch (Exception e) {
                                  
                                    out.println(e.getMessage());
                                    e.printStackTrace();
                                    }
                                    try {
                                    if (s != null) {
                                        s.close();
                                        connect.close();
                                    }
                                    } catch (SQLException e) {
                              
                                    out.println(e.getMessage());
                                    e.printStackTrace();
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