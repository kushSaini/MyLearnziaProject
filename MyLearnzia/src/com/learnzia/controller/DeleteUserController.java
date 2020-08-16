package com.learnzia.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnzia.dao.UserDAOImpl;


@WebServlet("/DeleteUserController")
public class DeleteUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		UserDAOImpl dao=new UserDAOImpl();
		boolean result=dao.deleteUser(username, email);
		if(result==true){
			out.println("<html><body><div align='center'><h3>User Deleted Successfully</h3></div></body></html>");
			request.getRequestDispatcher("adminDashboard.jsp").include(request, response);
		}
		else{
			out.println("<html><body><div align='center'><h3>Error In Deleting User</h3></div></body></html>");
			request.getRequestDispatcher("adminDashboard.jsp").include(request, response);
		}
	
	
	}

}
