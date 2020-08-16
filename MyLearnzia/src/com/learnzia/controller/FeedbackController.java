package com.learnzia.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnzia.dao.FeedbackDAOImpl;
import com.learnzia.model.Feedback;


@WebServlet("/FeedbackController")
public class FeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String trainer=request.getParameter("trainerName");
		String rating=request.getParameter("ratings");
		String message=request.getParameter("message");
		FeedbackDAOImpl dao=new FeedbackDAOImpl();
		Feedback feed=new Feedback(trainer,rating,message);
		boolean result=dao.insertFeedback(feed);
		if(result==true) {
			out.println("<html><body><div align='center'><h3>Feedback Submitted Successfully...</h3></div></body></html>");
			request.getRequestDispatcher("feedbackView.jsp").include(request, response);
		}
		else {
			out.println("<html><body><div align='center'><h3>Error While Giving Feedback...Try Again Later</h3></div></body></html>");
			request.getRequestDispatcher("feedbackView.jsp").include(request, response);
		}
	
	}

}
