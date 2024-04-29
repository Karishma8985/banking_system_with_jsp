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
<%
try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		// create connection with server
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_atm","root","");
		Statement s=con.createStatement();
		/*data get from html page....   */
		String email = request.getParameter("email");
		String password =request.getParameter("password");
		// create resultset for executing query and fetch data
		ResultSet rs = s.executeQuery("select * from admin where email = '"+email+"' and password= '"+password+"' ");
		
		session.setAttribute("adminemail",email);// email is unique field so need to fetch it
		if(rs.next())
		{
			out.print("Login successfully....");
			response.sendRedirect("home.jsp");
		}
		else
		{
			System.out.print(" invalid account_no or password...");
		}
		
}
catch (Exception e){
	System.out.print(e);
}
		
	%>
</body>
</html>