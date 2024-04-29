
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<style>
body{
width:100%;
overflow-x:hidden;
}
</style>
</head>
<body>
 
		<%
try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	// create connection with server"src/main/webapp/profile_update_data.jsp"
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_atm","root","");
	Statement s=con.createStatement(); 

	
			int id = Integer.parseInt(request.getParameter("id"));
		
		ResultSet rs = s.executeQuery("select * from user where id = "+id+" ");
		
		while(rs.next())
		{
		
	// for to fetch data and show in form on web server
	
		%>
		<div class="col-md-6" style="position:absolute; top:80px; left:500px;">
		<form action="update.jsp">
		
       <div class="form-group">
       <input type="hidden" class="form-control" id="id"  name="id" value="<%= rs.getInt(1)%>"/>
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name"  name="uname" value="<%= rs.getString(2)%>"/>
  </div>
  
   <div class="form-group">
    <label for="atm_pin">Atm_pin</label>
    <input type="text" class="form-control" id="atm_pin"  name="atm_pin" value="<%= rs.getInt(3)%>"/>
  </div>
  
   <div class="form-group">
    <label for="account_no">account_no</label>
    <input type="number" class="form-control" id="account_no"  name="account_no" value="<%= rs.getInt(4)%>"  readonly/>
  </div>
 
 <div class="form-group">
    <label for="contact">Contact_no</label>
    <input type="text" class="form-control" id="contact" name="contact_no" value="<%= rs.getString(6)%>"/>
  </div>
  <div class="form-group">
     <input type="submit" value="Update" class="btn btn-success">
  </div>
 	</form>
	</div>
	
	
	
	
		
		<%
		}		
		}catch (Exception e){
	out.print(e);
}
		
	%>
</body>
</html>