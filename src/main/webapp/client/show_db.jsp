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
<%@ include file="common_file.jsp" %>
<%
		try{
			/* account_no = (Integer)session.getAttribute("account_no"); */
		
			
			/* Class.forName("com.mysql.cj.jdbc.Driver");
				// create connection with server"src/main/webapp/profile_update_data.jsp"
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_atm","root","");
				Statement s=con.createStatement(); */
				rs = s.executeQuery("select * from user where account_no = "+account_no+" ");
			%>
			
			<div class="container">
			<div class="row">
			<div class="col-md-6" style="position:absolute; top:80px; left:500px;">
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
							     <!--  <th scope="col">Atm_pin</th> -->
							      <th scope="col">Account_no</th>
							      <th scope="col">Balance</th>
								  <th scope="col">Contact_no</th>
                              </tr>
                           </thead>
              <%
					while(rs.next())
			{ %>
                           <tbody>
                              <tr>
                               	<td><%=rs.getInt(1)%></td>
								<td><%=rs.getString(2)%></td>
								<%-- <td><%=rs.getInt(3)%></td> --%>
								<td><%=rs.getInt(4)%></td>
								<td><%=rs.getInt(5)%></td>
								<td><%=rs.getString(6)%></td>
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