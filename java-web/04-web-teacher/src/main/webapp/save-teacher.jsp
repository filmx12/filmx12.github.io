<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="5;url=insert-teacher.jsp">
<title>save-teacher</title>
</head>
<body>
	<%!String idcard = "";
	String tname = "";
	String fname = "";
	String lname = "";
	String gender = "";
	String dept = "";
	String pic = "";
	String pictype = "";%>
	
	<%
	//to get the content type information from JSP Request Header
	request.setCharacterEncoding("UTF-8");
	String contentType = request.getContentType();
	//here we are checking the content type is not equal to Null and
	if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
		DataInputStream in = new DataInputStream(request.getInputStream());
		//we are taking the length of Content type data
		int formDataLength = request.getContentLength();
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		//this loop converting the uploaded file into byte code
		while (totalBytesRead < formDataLength) {
			byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
			totalBytesRead += byteRead;
		}
		String file = new String(dataBytes, "UTF-8");
		
		//out.println(file);

		idcard = file.substring(file.indexOf("name=\"idcard\"") + 17);
		idcard = idcard.substring(0, idcard.indexOf("-") - 2);
		out.println(idcard + "<br>");

		tname = file.substring(file.indexOf("name=\"tname\"") + 16);
		tname = tname.substring(0, tname.indexOf("-") - 2);
		out.println(tname + "<br>");

		fname = file.substring(file.indexOf("name=\"fname\"") + 16);
		fname = fname.substring(0, fname.indexOf("-") - 2);
		out.println(fname + "<br>");

		lname = file.substring(file.indexOf("name=\"lname\"") + 16);
		lname = lname.substring(0, lname.indexOf("-") - 2);
		out.println(lname + "<br>");

		gender = file.substring(file.indexOf("name=\"gender\"") + 16);
		gender = gender.substring(0, gender.indexOf("-") - 2);
		out.println(gender + "<br>");

		dept = file.substring(file.indexOf("name=\"dept\"") + 15);
		dept = dept.substring(0, dept.indexOf("-") - 2);
		out.println(dept + "<br>");

		pic = file.substring(file.indexOf("filename=\"") + 10);
		pic = pic.substring(0, pic.indexOf("\""));
		out.println(pic + "<br>");
		
		pictype = pic.substring(pic.indexOf("."));
		//pictype = pictype.substring(0, pictype.indexOf("\""));
		out.println(pictype + "<br>");


		//ใช้ copy รูป

		String file1 = new String(dataBytes, "CP1256");
		String saveFile = file1.substring(file1.indexOf("filename=\"") + 10);
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
		saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1, contentType.length());
		int pos;
		//extracting the index of file 
		pos = file1.indexOf("filename=\"");
		pos = file1.indexOf("\n", pos) + 1;
		pos = file1.indexOf("\n", pos) + 1;
		pos = file1.indexOf("\n", pos) + 1;
		int boundaryLocation = file1.indexOf(boundary, pos) - 4;
		int startPos = ((file1.substring(0, pos)).getBytes("CP1256")).length;
		int endPos = ((file1.substring(0, boundaryLocation)).getBytes("CP1256")).length;
		// creating a new file with the same name and writing the content in new file

		String savePath = application.getRealPath("\\pic\\" + idcard + pictype);

		out.println("Upload file Successfully.<br>");

		out.println("Save to : " + savePath + "<br>");

		FileOutputStream fileOut = new FileOutputStream(savePath);
		fileOut.write(dataBytes, startPos, (endPos - startPos));
		fileOut.flush();
		fileOut.close();
	}
	%>
	
	<%
	request.setCharacterEncoding("UTF-8");
	Connection connect = null;
	Statement s = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connect = DriverManager.getConnection("jdbc:mysql://localhost/itrayong" + "?user=root&password=");
		s = connect.createStatement();
		String sql = "INSERT INTO teacher (idcard, tname, fname, lname, gender, dept, pic) VALUES (" + 
		idcard + ", '" + tname + "', '" + fname + "', '" + 
		lname + "', " + gender + ", '" + dept + "', '" + idcard + pictype + "')"; 

		//out.println(sql);
		//ResultSet rec = s.executeQuery(sql);
		
		s.execute(sql);
		out.println("Insert Successfully");
		
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


</body>
</html>