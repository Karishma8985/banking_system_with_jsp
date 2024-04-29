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
 <%@ include file="commonpage.jsp" %>
	<div class="col-md-6" style="position:absolute; top:80px; left:500px;">
			<form action="adminprofile_update.jsp">
     		  	<div class="form-group">
				    <label for="uname">User Name</label>
				    <input type="text" class="form-control" id="uname"  name="uname" value="<%= rs.getString(1)%>"/>
				</div>
  
			   <%-- <div class="form-group">
			    <label for="email">email</label>
			    <input type="email" class="form-control" id="email"  name="email" value="<%= rs.getString(2)%>"/>
			  </div> --%>
 
				 <div class="form-group">
				    <label for="password">Password</label>
				    <input type="password" class="form-control" id="password" name="psw" value="<%= rs.getString(3)%>"/>
				  </div>
  
				  <div class="form-group">
				     <input type="submit" value="Update" class="btn btn-success">
				  </div>
 			</form>
		</div>
	
		
		
</body>
</html>