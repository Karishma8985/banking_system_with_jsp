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
<%@ include file="commonpage.jsp" %> 
<%
	try{	
		email = (String)session.getAttribute("adminemail");
		String name = request.getParameter("uname");
		
		String password = request.getParameter("psw");
				
		int i=s.executeUpdate("update admin set username = '"+name+"', password = '"+password+"'  where email = '"+email+"' ");
		if(i>0)                                                                                                                                                                                                                                                         
		{		
		%>		
			<script>
							alert('User updated Successfully...........');
							window.location='commonpage.jsp';
			</script>
			<% }
			else
			{ 
			%>
			
			<script>
							alert('User can"'t  updated Successfully...........');
							window.location='admin_profile1_update.jsp';
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