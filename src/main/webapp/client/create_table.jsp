<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_atm","root","");
		Statement s=con.createStatement();
			
		// my sql query for creating table and table field.
		s.execute("create table user(id integer primary key AUTO_INCREMENT, name varchar(20), atm_pin integer, account_no integer, balance integer, contact_no integer)");
		
		s.close(); // close the Statement to let the database know we're done with it 
		
		System.out.println("Table created successfully");
		
		con.close(); // close the Connection to let the database know we're done with it 
	}catch(Exception e)
	{
		System.out.println(e);
	}
	%>
</body>
</html>