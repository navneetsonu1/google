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
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%-- <%@ include file="Header.jsp" %>--%>
	<c:import url="Header.jsp"></c:import>
	
	<h1>Department List</h1>
	
	<div class="container">
  
  <table class="table table-striped">
    <thead>
      <tr>
        	<td>Dept Id</td>
        	<td>Dept Name</td>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${dept}" var="dpt">
		<tr>
			<td>${dpt.deptId }</td>
			<td>${dpt.deptName }</td>
		</tr>
	</c:forEach>     

    </tbody>
  </table>
</div>

</body>
</html>