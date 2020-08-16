package com.learnzia.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnzia.dao.SessionDAOImpl;



@WebServlet("/SessionDeleteController")
public class SessionDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int id=Integer.parseInt(request.getParameter("id"));
		
		SessionDAOImpl dao=new SessionDAOImpl();
		dao.deleteSession(id);
		out.println("<html><body><div align='center'><h3>Session Deleted Successfully</h3></div></body></html>");
		request.getRequestDispatcher("sessions.jsp").include(request, response);
	}

}
