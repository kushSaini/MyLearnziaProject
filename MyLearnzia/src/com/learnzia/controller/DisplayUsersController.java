package com.learnzia.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnzia.dao.UserDAOImpl;
import com.learnzia.model.User;



@WebServlet("/DisplayUsersController")
public class DisplayUsersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAOImpl dao=new UserDAOImpl();
		List<User> list=dao.selectUsers();
		request.setAttribute("list", list);
		request.getRequestDispatcher("selectAllUsers.jsp").include(request, response);
	}

	
	
}
