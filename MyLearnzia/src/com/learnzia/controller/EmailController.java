package com.learnzia.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnzia.service.MailService;

@WebServlet("/EmailController")
public class EmailController extends HttpServlet {
	 
	    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request,
	            HttpServletResponse response) throws ServletException, IOException {
	        
	    	response.setContentType("text/html");
	    	PrintWriter out=response.getWriter();
	        String recipient = request.getParameter("email");
	        String subject = request.getParameter("subject");
	        String content = request.getParameter("message");
	        String name=request.getParameter("name");
	        
	        MailService mail=new MailService();
	        boolean result=mail.send("mylearnzia@gmail.com","MyLearnzia@123",recipient, subject, "Hello "+name+",\n"+content+"");
	        if(result==true){
	        	out.println("<html><body><div align='center'><h4>E-Mail Sent Successfully</h4></div></body></html>");
	        	request.getRequestDispatcher("email.jsp").include(request, response);
	        }
	        else{
	        	out.println("<html><body><div align='center'><h4>Unable To Send E-Mail Try Again</h4></div></body></html>");
	        	request.getRequestDispatcher("email.jsp").include(request, response);
	        }
		}
}
