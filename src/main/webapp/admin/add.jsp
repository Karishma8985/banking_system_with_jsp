<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>second insert practical....</title>
</head>
<body>
<%
try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_atm","root","");
		Statement s=con.createStatement();
		
		/* <!-- taking input from html page... --> */
		String name = request.getParameter("uname");
		int atm_pin = Integer.parseInt(request.getParameter("atm_pin"));
		int account_no = Integer.parseInt(request.getParameter("acc_no"));
		int balance = Integer.parseInt(request.getParameter("balance"));
		String contact_no =request.getParameter("contact_no");
		//out.print(num);
		
		/* <!-- execute insert query */ 
		int i=s.executeUpdate("insert into user(name,atm_pin,account_no,balance,contact_no) values ('"+name+"',"+atm_pin+","+account_no+","+balance+",'"+contact_no+"')");
		if(i>0)
		{		
		%>
			
			<script>
							alert('User inserted Successfully...........');
							window.location='detail_data.jsp';
			</script>
			<% }
			else
			{ 
			%>
			
			<script>
							alert('User can"'t  inserted Successfully...........');
							window.location='detail_data.jsp';
			</script>	
				
			<% 
			 }
	
	}catch(Exception e)
	{
		System.out.println(e);
	}
	%>
</body>
</html>