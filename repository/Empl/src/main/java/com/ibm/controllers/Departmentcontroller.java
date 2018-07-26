package com.ibm.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.DepartmentDAO;
import com.ibm.model.Department;

/**
 * Servlet implementation class Departmentcontroller
 */
@WebServlet("/Departments")
public class Departmentcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get the location id from the form
		int locId = Integer.parseInt(request.getParameter("loc"));
		//get list of departments by using DAO
		DepartmentDAO dao= new DepartmentDAO();
		ArrayList<Department> dept =dao.getDeptbyLoc(locId);
		
		//Add list as a request attribute
				request.setAttribute("dept", dept);
				
		
		//Forward the request
		RequestDispatcher disp = request.getRequestDispatcher("departmentList2.jsp");
		disp.forward(request, response);
	}

}
