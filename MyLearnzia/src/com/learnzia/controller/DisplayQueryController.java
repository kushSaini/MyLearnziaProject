package com.learnzia.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnzia.dao.QueryDAOImpl;
import com.learnzia.model.QueryTable;


@WebServlet("/DisplayQueryController")
public class DisplayQueryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		QueryDAOImpl dao=new QueryDAOImpl();
		List<QueryTable> list=dao.displayAllQuery();
		request.setAttribute("list", list);
		request.getRequestDispatcher("selectQueryView.jsp").include(request, response);
	}

}
