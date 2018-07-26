<%@ page import="com.ibm.model.Department,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" >
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/jquery/dist/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dept</title>
</head>
<body>
	<%@ include file="Header.jsp" %>
	<h1>Department List</h1>
	
	<div class="container">
  
  <table class="table">
    <thead>
      <tr>
        <th>Department Id <tb>   Department Name</th>
        
        
      </tr>
    </thead>
    <tbody>
	<%
		List<Department> depts = (List<Department>)request.getAttribute("dept"); 
	for(Department d : depts){
		%>
		<tr>
		<td><%=d.getDeptId()%>	<tb>		<%=d.getDeptName() %> </tr>
		
		</tr>
		<%
		}
	%>
       

    </tbody>
  </table>
</div>
	
	

</body>
</html>