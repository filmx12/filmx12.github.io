<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Refresh" content="0; url=show-teacher.jsp">
<title>Insert title here</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	Connection connect = null;
	Statement s = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connect = DriverManager.getConnection("jdbc:mysql://localhost/itrayong" + "?user=root&password=");
		s = connect.createStatement();
		String sql = "DELETE FROM teacher WHERE idcard = " + request.getParameter("idcard");
		//out.println(sql);
		//ResultSet rec = s.executeQuery(sql);
		s.execute(sql);
		out.println("Delete Successfully");
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

	<%
	//File f = new File("./pic/" + request.getParameter("pic"));
	File f = new File(application.getRealPath("\\pic\\" + request.getParameter("pic")));
	f.delete();
	%>

</body>
</html>