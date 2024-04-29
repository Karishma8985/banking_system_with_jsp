<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<%@ include file="common_file.jsp" %>
<%
	
try{
	int amt = Integer.parseInt(request.getParameter("amount"));
	
	int new_balance;
	
	 rs = s.executeQuery("select * from user where account_no = "+account_no+" ");
		if(rs.next())
		{			
			if(rs.getInt(5)>amt)
			{
			 	new_balance=rs.getInt(5)-amt;
			 	
			 	int i=s.executeUpdate("update user set balance = "+new_balance+" where account_no= "+account_no);
				
			 	if(i>0)
					{
			 		%>
					
					<div class="col-md-6" style="position:absolute; top:280px; left:500px;">		
						<div class="alert alert-success">
					  		<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
					  			data update successfully........ <%= new_balance %>
						</div>
					</div>
								<% 
							
					}
				else
					{ %>

					<div class="col-md-6" style="position:absolute; top:280px; left:500px;">		
						<div class="alert alert-danger">
					  		<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
					  			data not updated successfully...
						</div>
					</div>
					<% 

						
					}
			}
			else
			{ %>

			<div class="col-md-6" style="position:absolute; top:280px; left:500px;">		
				<div class="alert alert-danger">
			  		<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
			  			Not sufficient amount in account...
				</div>
			</div>
			<% 
			}
		}
		else{ %>
			<div class="col-md-6" style="position:absolute; top:280px; left:500px;">		
				<div class="alert alert-danger">
  				<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
  			Can't login
			</div>
		</div>
<%
		}
}
catch (Exception e){
			System.out.print(e);
}

%>
<div class="col-md-6" style="position:absolute; top:80px; left:500px;">
		<form action="" method="post">
		  <div class="form-group">
    <label for="amt_data">Amount</label>
    <input type="text" class="form-control" id="amt_data"  name="amount">
  </div>
  <div class="form-group">
     <input type="submit" value="withdraw" class="btn btn-success">
  </div>
		</form>
		</div>
		


</body>
</html>