<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dattu?characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true","root","Dattu@123"
);
	String fn = request.getParameter("firstname");
	String ln = request.getParameter("lastname");
	String contact = request.getParameter("mobile");
	String email = request.getParameter("email");
	String gender = request.getParameter("gender");
 
	String graduation = request.getParameter("graduation");
	String branch = request.getParameter("branch");
	String passedoutyear = request.getParameter("passed_out_year");
	String course = request.getParameter("Course");
	String address = request.getParameter("address");

	 
	String sql = "INSERT INTO registraion ( firstname ,lastname ,contact ,email,gender,graduation,branch,passed_out_year , Course , address) VALUES (?, ?, ?, ?, ?, ? , ?, ?, ?, ?)";
    PreparedStatement  pstmt = con.prepareStatement(sql);
    pstmt.setString(1, ln);
	pstmt.setString(2, fn);
	pstmt.setString(3, contact);
	pstmt.setString(4, email);
	pstmt.setString(5, gender);
 
	pstmt.setString(6, graduation);
	pstmt.setString(7, branch);
	pstmt.setString(8, passedoutyear);
	pstmt.setString(9, course);
	pstmt.setString(10, address);


	 int rowsInserted = pstmt.executeUpdate();
     if (rowsInserted > 0) {
         out.println("Account created successfully.");
         %>
         <jsp:forward page="index.jsp"></jsp:forward>
         <% 
     } else {
         out.println("Failed to create account.");
          
     }
 } catch (Exception e) {
     out.println("An error occurred: " + e.getMessage());
     e.printStackTrace();
 }  

     
       
 
%>
</body>
</html>