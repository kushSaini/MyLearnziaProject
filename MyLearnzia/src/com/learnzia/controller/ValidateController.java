package com.learnzia.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.learnzia.dao.ThoughtsDAOImpl;
import com.learnzia.dao.UserDAOImpl;


@WebServlet("/ValidateController")
public class ValidateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		UserDAOImpl dao=new UserDAOImpl();
		String name=dao.validateUser(username, password);
		if (name.equals("admin")){
			ThoughtsDAOImpl dao1=new ThoughtsDAOImpl();
			String thought=dao1.retriveThoughts();
			HttpSession session=request.getSession();
			session.setAttribute("Name", name);
			session.setAttribute("thought", thought);
			request.getRequestDispatcher("adminDashboard.jsp").forward(request, response);
		}
		else if(name!=null) {
			ThoughtsDAOImpl dao1=new ThoughtsDAOImpl();
			String thought=dao1.retriveThoughts();
			HttpSession session=request.getSession();
			session.setAttribute("Name", name);
			session.setAttribute("thought", thought);
			request.getRequestDispatcher("dashboardView.jsp").forward(request, response);
		}
	 
		else {
			out.println("<html><body><h3><div align='center'>Invalid Username or Password</h3></div></body></html>");
			request.getRequestDispatcher("index.html").include(request, response);
		}
	}

}
