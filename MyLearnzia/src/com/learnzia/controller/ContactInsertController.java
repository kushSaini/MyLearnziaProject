package com.learnzia.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnzia.dao.ContactDAOImpl;


@WebServlet("/ContactInsertController")
public class ContactInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String desg=request.getParameter("desg");
		ContactDAOImpl dao=new ContactDAOImpl();
		boolean result=dao.addContact(name, email, desg);
		if(result==true) {
			out.println("<html><body><div align='center'><h3>Contact Inserted Successfully...</h3></div></body></html>");
			request.getRequestDispatcher("insertContact.jsp").include(request, response);
		}
		else {
			out.println("<html><body><div align='center'><h3>Error While Inserting Contact...</h3></div></body></html>");
			request.getRequestDispatcher("insertContact.jsp").include(request, response);
		}
	}

}
