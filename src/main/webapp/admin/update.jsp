<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%@ include file="connection.jsp" %> --%>
<%
	try{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		// create connection with server"src/main/webapp/profile_update_data.jsp"
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_atm","root","");
		Statement s=con.createStatement(); 
		ResultSet rs = s.executeQuery("select * from user ");
				/* <!-- taking input from html page... --> */
		int id=Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("uname");
		int atm_pin= Integer.parseInt(request.getParameter("atm_pin"));
    	
		String contact_no= request.getParameter("contact_no");		
				
		int i=s.executeUpdate("update user set name = '"+name+"', atm_pin = "+atm_pin+",contact_no="+contact_no+" where id = "+id+" ");
		
		if(i>0)
		{		
		%>		
			<script>
							alert('User updated Successfully...........');
							window.location='detail_data.jsp';
			</script>
			<% }
			else
			{ 
			%>
			
			<script>
							alert('User can"'t  updated Successfully...........');
							window.location='detail_data.jsp';
			</script>	
				
			<% 
	}
	}
catch (Exception e){
	System.out.print(e);
}

	

%>
</body>
</html>