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
</head>
<body>
<%
	String email = (String)session.getAttribute("adminemail");
	String uname="";
	Class.forName("com.mysql.cj.jdbc.Driver");
		// create connection with server"src/main/webapp/profile_update_data.jsp"
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_atm","root","");
		Statement s=con.createStatement();
		ResultSet rs = s.executeQuery("select * from admin where email = '"+email+"' ");
		session.setAttribute("adminemail",email);// email is unique field so need to fetch it
		if(rs.next())
		{
			
			 uname= rs.getString(1);
			
		}
		
if(email !=null){
%>
<div class="container-fluid">
    <div class="row">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-primary">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                <a href="#" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-5 d-none d-sm-inline">welcome  <%=uname %></span>
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                     
                    <li>
                        <a href="home.jsp" data-bs-toggle="collapse" class="nav-link px-0 align-middle text-white text-decoration-none">
                            <i class="fs-4 bi-speedometer2"></i> <span class="ms-1 d-none d-sm-inline">Dashboard</span> </a>
                      
                    </li>
                    <li>
                        <a href="detail_data.jsp" class="nav-link px-0 align-middle text-white text-decoration-none">
                            <i class="fs-4 bi-table"></i> <span class="ms-1 d-none d-sm-inline">User Detail</span></a>
                    </li>
                    <li>
                        <a href="admin_profile1_update.jsp" data-bs-toggle="collapse" class="nav-link px-0 align-middle text-white text-decoration-none">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Profile Update</span></a>
                       
                    </li> <li>
                        <a href="changepassword.jsp" data-bs-toggle="collapse" class="nav-link px-0 align-middle text-white text-decoration-none">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Change_Password</span></a>
                       
                    </li>
                   <li>
                        <a href="logout.jsp" class="nav-link px-0 align-middle text-white text-decoration-none">
                            <i class="fs-4 bi-people"></i> <span class="ms-1 d-none d-sm-inline">Logout</span> </a>
                    </li>
                </ul>
                <hr>
                
                
                 
                 
                
            </div>
        </div>
        <%
}
else
{
	%>		
	<script>
		alert('Please Login First..........');
		window.location='index.jsp';
	</script>
<%
}
%>

   <%--  <%@ include file="footer.jsp" %> --%>
</body>
</html>