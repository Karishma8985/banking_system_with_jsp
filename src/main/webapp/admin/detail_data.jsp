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
</head>
<body>
<%@ include file="commonpage.jsp" %>
<%-- <%@ include file="admin_connection.jsp" %> --%> 
<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		// create connection with server"src/main/webapp/profile_update_data.jsp"
//		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_atm","root","");
		//Statement s=con.createStatement(); 
				ResultSet res = s.executeQuery("select * from user ");
			%>
			
			<div class="container">
			<div class="row">
		    
		
			<div class="col-md-8" style="position:absolute; top:120px; left:400px;">
			<div class="col-12">
		<button class="btn btn-primary" style='margin-left:89%' ><a href="add.html" class="text-decoration-none text-white">Add User</a></button>
		</div>
        
			<div class="card mb-4">
			     <div class="card-header">
                 
                       <i class="fas fa-table me-1"></i>
                       <h4 class="text-center text-danger"> Account Details </h4>
                 </div>
                 
                 <div class="card-body">
                       <table id="datatablesSimple" class="table table-striped">
                           <thead class="thead-dark">
                              <tr>
                                  <th scope="col">Id</th>
						 	      <th scope="col">Name</th>
							   
							    <!--   <th scope="col">Atm_pin</th> -->
							      <th scope="col">Account_no</th>
							      <!-- <th scope="col">Balance</th>
								  <th scope="col">Contact_no</th> -->
								  <th scope="col">Delete</th>
								  <th scope="col">Edit</th>
								  <th scope="col">Views</th>
                              </tr>
                           </thead>
              <%
					while(res.next())
			{ %>
                           <tbody>
                              <tr>
                               	<td><%=res.getInt(1)%></td>
								<td><%=res.getString(2)%></td>
								<%-- <td><%=rs.getInt(3)%></td> --%>
								<td><%=res.getInt(4)%></td>
								<%-- <td><%=rs.getInt(5)%></td>
								<td><%=rs.getString(6)%></td> --%>
								<td><a href="delete_jsp.jsp?id=<%=res.getInt(1)%>">delete</a></td>
								<td><a href="edit.jsp?id=<%=res.getInt(1)%>">Edit</a></td>
								<td><a href="views.jsp?id=<%=res.getInt(1)%>">views</a></td>
		<!--this is a queryString for data deleting  --><!-- <a href="pagename?id=value -->
						       </tr>
                            </tbody>
              <%
				}
				con.close();
			%>
						</table>
				</div>
			</div>		
			</div>
			</div>
			</div>	
			<%
				}catch(Exception e)
				{
					System.out.println(e);
					}
			%>
</body>
</html>