package com.learnzia.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnzia.dao.AssignmentDAOImpl;
import com.learnzia.model.Assignment;

@WebServlet("/AssignmentController")
public class AssignmentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try 
		{
			int id=Integer.parseInt(request.getParameter("id"));
			String question=request.getParameter("question");
			String module=request.getParameter("module");
			String topic=request.getParameter("topic");
		
			String st=request.getParameter("enddate");
			SimpleDateFormat s=new SimpleDateFormat("dd/MM/yyyy");
			
		
			Date d= s.parse(st);
			java.sql.Date dt=new java.sql.Date(d.getTime());
			
			Assignment assign=new Assignment(id,question,module,topic,dt);
			AssignmentDAOImpl dao=new AssignmentDAOImpl();
			boolean result=dao.addAssignment(assign);
			if(result==true)
			{
				out.println("<html><body bgcolor='green'><div align='center'><h3><font color='white'>Assignment Inserted Successfully</font></h3></div</body></html>");
				request.getRequestDispatcher("assignment.jsp").include(request, response);
			}//if
			else
			{
				out.println("<html><body bgcolor='red'><div align='center'><h3><font color='white'>Error Inserting</font></h3></div</body></html>");
				request.getRequestDispatcher("assignment.jsp").include(request, response);
			}//else
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		} //catch
		
	}

}//class
