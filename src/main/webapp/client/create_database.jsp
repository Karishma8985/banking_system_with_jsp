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
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","");
			
		/* <!-- execute create database query */ 
		Statement s=con.createStatement();
		s.execute("create database java_atm");
		//System.out.println("Connection create....");
		
		if(con!=null)
			{
				System.out.print("database created successfully...........");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
			}
	
	%>
	
</body>
</html>