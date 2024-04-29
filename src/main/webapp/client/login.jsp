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
		
		int atm_pin = Integer.parseInt(request.getParameter("atm_pin"));
		int account_no = Integer.parseInt(request.getParameter("acc_no"));
		// create resultset for executing query and fetch data
		ResultSet rs = s.executeQuery("select * from user where atm_pin = "+atm_pin+" and account_no= "+account_no+" ");
		
		session.setAttribute("account_no",account_no);
		if(rs.next())
		{
			//out.print("Login successfully....");
			response.sendRedirect("index.jsp");
		}
		else
		{
			out.print(" invalid account_no or password...");
		}
		
}
catch (Exception e){
	out.print(e);
}
		
	%>
</body>
</html>