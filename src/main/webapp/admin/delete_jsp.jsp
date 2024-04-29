<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import= "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>
<%-- <%@ include file="admin_connection.jsp" %> --%>

	<%
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		// create connection with server"src/main/webapp/profile_update_data.jsp"
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_atm","root","");
		Statement s=con.createStatement(); 
		
		int id = Integer.parseInt(request.getParameter("id"));
		// delete particular data
		int del = s.executeUpdate("delete from user where id = '"+id+"' ");
		if(del>0)
		{		
		%>
			
			<script>
							alert('User Deleted Successfully...........');
							window.location='detail_data.jsp';
			</script>
			<% }
			else
			{ 
			%>
			
			<script>
							alert('User can"'t  Deleted Successfully...........');
							window.location='detail_data.jsp';
			</script>	
				
			<% 
			 }
	}
	catch(Exception e)
	{
		System.out.println(e);
		}
	%>


</body>
</html>