package com.learnzia.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnzia.dao.UserDAOImpl;


@WebServlet("/AssignmentInsertController")
public class AssignmentInsertController extends HttpServlet {
	private static final long serialVersionUID = 2L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String passcode=request.getParameter("passcode");
		UserDAOImpl dao=new UserDAOImpl();
		boolean name=dao.validatePasscode(passcode);
		if(name!=false) {
			request.getRequestDispatcher("assignmentInsert.jsp").forward(request, response);
		}
		else {
			out.println("<html><body><div align='center'><h3>Invalid Passcode !! Not Allowed</h3></div></body></html>");
			request.getRequestDispatcher("assignmentInsert.jsp").include(request, response);
		}
	}
}
