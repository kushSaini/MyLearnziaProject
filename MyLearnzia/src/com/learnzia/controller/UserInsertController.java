package com.learnzia.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnzia.dao.UserDAOImpl;
import com.learnzia.model.User;

@WebServlet("/UserInsertController")
public class UserInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("username");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String address=request.getParameter("address");
		String doj=request.getParameter("doj");
		String designation=request.getParameter("design");
		String passcode=request.getParameter("passcode");
	
		PrintWriter out=response.getWriter();
		User user=new User(uname,password,name,dob,gender,email,mobile,address,doj,designation,passcode);
		UserDAOImpl dao=new UserDAOImpl();
		boolean result = dao.insertUser(user);
		if(result==true){
			out.println("<html><body><div align='center'><h3>User Inserted Successfully</h3></div></body></html>");
			request.getRequestDispatcher("adminDashboard.jsp").include(request, response);
		}
		else{
			out.println("<html><body><div align='center'><h3>Error In Inserting User</h3></div></body></html>");
			request.getRequestDispatcher("adminDashboard.jsp").include(request, response);
		}
	
	
	}

}
