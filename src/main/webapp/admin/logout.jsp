<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<%
		session.invalidate();
%>

	<script>
		alert('You have been successfully logout........');
		window.location='index.jsp';
	</script>
		

</body>
</html>