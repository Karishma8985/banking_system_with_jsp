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
<%@ include file="index.jsp" %>
<%
	try{
			
		/* <!-- taking input from html page... --> */
		int p_id=Integer.parseInt(request.getParameter("p_id"));
		name = request.getParameter("uname");
		int atm_pin= Integer.parseInt(request.getParameter("atm_pin"));
	//	account_no= Integer.parseInt(request.getParameter("account_no"));
	//	int balance= Integer.parseInt(request.getParameter("balance"));
		String contact_no= request.getParameter("contact_no");		
		//contact_no ma wrong htu
		
		
		int i=s.executeUpdate("update user set name = '"+name+"', atm_pin = "+atm_pin+",contact_no="+contact_no+" where account_no = '"+account_no+"' ");
		if(i>0)
			
		{%>
		<div class="alert">
  		<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
  			Profile Updated Successfully......
		</div>
		
			<% 
		}
		else
		{
			out.print("data not updated successfully...");
		}
	}
catch (Exception e){
	System.out.print(e);
}

	

%>
</body>
</html>