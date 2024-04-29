<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.h1{
height: 100px;
width: 100px;
background-color:teal;
border-radius:10px;
}
</style>
</head>
<body>

        
<%@ include file="commonpage.jsp" %>

<%
		ResultSet rs1 = s.executeQuery("select count(id) from user ");
		rs1.next();
		int count_user=rs1.getInt(1);
		
		//System.out.print("countdata:  "+count);
%>
<div class="col-md-9 my-5">
	<div class="card-deck">
  <div class="card">
    
    <div class="card-body bg-success" >
      <h5 class="card-title text-center">User</h5>
      
      <p class="card-text text-center "><%= count_user %></p>
    </div>
  </div>
  <div class="card">
   
    <div class="card-body bg-info">
      <h5 class="card-title">Card title</h5>
   
      <p class="card-text"><small class="text-muted"></small></p>
    </div>
  </div>
  <div class="card">

    <div class="card-body bg-warning">
      <h5 class="card-title">Card title</h5>

      <p class="card-text"><small class="text-muted"></small></p>
    </div>
  </div>
</div>
</div>
</div>
</div>
        
   
        <%@ include file="footer.jsp" %>
        
</body>
</html>
