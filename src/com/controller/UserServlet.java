package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.AdminService.AdminService;
import com.beans.Item;

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("id");
		if(id==null) {
			System.out.println("I came in do get.");
			request.setAttribute("cmsg","");
			request.getRequestDispatcher("userpages/user-main1.jsp").forward(request, response);
		}
		else {
			doPost(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("id");
		AdminService adminService = new AdminService();
		if(id.equals("memes")) {
			System.out.println("I came in user servlet.");
			List<Item> listItems=new ArrayList();
			try {
				listItems = adminService.fetchItems();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("listItems", listItems);
			request.getRequestDispatcher("userpages/user-memes.jsp").forward(request, response);
		}
		if(id.equals("articles")) {
			System.out.println("I came in user servlet.");
			List<Item> listItems=new ArrayList();
			try {
				listItems = adminService.fetchItems();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("listItems", listItems);
			request.getRequestDispatcher("userpages/user-article.jsp").forward(request, response);
		}
		
		if(id.equals("paintings")) {
			List<Item> listItems=new ArrayList();
			try {
				listItems = adminService.fetchItems();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("listItems", listItems);
			request.getRequestDispatcher("userpages/user-drawings.jsp").forward(request, response);
		}
		
        if(id.equals("contact")) {
			request.getRequestDispatcher("userpages/user-contact.jsp").forward(request, response);
		}
		
      
	    
		
	}

}
