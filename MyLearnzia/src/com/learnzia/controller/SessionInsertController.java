package com.learnzia.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnzia.dao.SessionDAOImpl;
import com.learnzia.model.SessionModel;

@WebServlet("/SessionInsertController")
public class SessionInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
	
		int id=Integer.parseInt(request.getParameter("id"));
		String title=request.getParameter("title");
		String stime=request.getParameter("stime");
		String etime=request.getParameter("etime");
		String batch=request.getParameter("batch");
		String venue=request.getParameter("venue");
		String tname=request.getParameter("tname");
		
		SessionDAOImpl dao=new SessionDAOImpl();
		SessionModel session=new SessionModel(id,title,stime,etime,batch,venue,tname);
		dao.addSession(session);
		out.println("<html><body><div align='center'><h3>Session Inserted Successfully</h3></div></body></html>");
		request.getRequestDispatcher("sessions.jsp").include(request, response);
	}

}
