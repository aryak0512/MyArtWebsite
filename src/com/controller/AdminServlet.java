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
import com.beans.Category;
import com.beans.Contact;
import com.beans.Item;

public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("id");
		if(id==null) {
			//System.out.println("I came inside servlet");
			request.setAttribute("msg", "");
			request.setAttribute("username","");
			request.getRequestDispatcher("adminpages/admin-login.jsp").forward(request, response);
		}
		else {
			doPost(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("id");
		AdminService adminService = new AdminService();
		if(id.equals("login")){
			//read validate and then send to homepage.jsp
			String username= request.getParameter("username");
			String password= request.getParameter("password");
		    
			if(username.equals("Aryak05")&&password.equals("1234")) {
				//System.out.print("I came inside servlet");
				List<Category> listCat=new ArrayList();
				try {
					listCat = adminService.fetchCategories();
					//WORKING WELL:
					/*for(Category c:listCat) {
						System.out.println("ID: "+c.getId());
						System.out.println("Name: "+c.getName());
					}*/
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				List<Item> listItems=new ArrayList();
				try {
					listItems = adminService.fetchItems();
					/*for(Item i:listItems) {
						System.out.println("ID: "+i.getId());
						System.out.println("Title: "+i.getTitle());
						System.out.println("Description: "+i.getDescription());
						System.out.println("Category ID: "+i.getCategoryid());
					}*/
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.setAttribute("listCat", listCat);
				request.setAttribute("listItems", listItems);
				request.getRequestDispatcher("adminpages/admin-main-page.jsp").forward(request, response);
			
			}
			else {
				//set attributes and a message if not valid
				request.setAttribute("msg", "INVALID CREDENTIALS !!!");
				request.setAttribute("username", username);
				request.getRequestDispatcher("adminpages/admin-login.jsp").forward(request, response);
			}
		}
			
		
		
			if(id.equals("addItem")){
				System.out.println("Came in servlet");
				int cid = Integer.parseInt(request.getParameter("cid"));
				System.out.println(cid);
				request.setAttribute("cid", cid);
				request.getRequestDispatcher("adminpages/admin-addItem.jsp")
				.forward(request, response);
			}
			
			
			if( id.equals("addItemToDB")){
				String cid = request.getParameter("cid");
				String title = request.getParameter("title");
				String description = request.getParameter("description");
				String info = request.getParameter("info");
				try {
					adminService.addItemDetails(cid,title,description,info);
				} catch (NumberFormatException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				//fetch all categories and products 
				List<Category> listCat=new ArrayList();
				try {
					listCat = adminService.fetchCategories();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
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
				
				request.setAttribute("listCat", listCat);
				request.setAttribute("listItems", listItems);
				
				request.getRequestDispatcher("adminpages/admin-main-page.jsp")
				.forward(request, response);
				
			}

			if(id.equals("deleteItem")) {
				//System.out.println("Came in servlet for delete");
				int pid = Integer.parseInt(request.getParameter("pid"));
				try {
					adminService.deleteItem(pid);
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				List<Category> listCat=new ArrayList();
				try {
					listCat = adminService.fetchCategories();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
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
				
				request.setAttribute("listCat", listCat);
				request.setAttribute("listItems",listItems);
				request.getRequestDispatcher("adminpages/admin-main-page.jsp")
				.forward(request, response);
				
			}
			
			if(id.equals("edit")) {
				int pid = Integer.parseInt(request.getParameter("pid"));
				List<String>list=new ArrayList();
				
				try {
					list=adminService.getItemData(pid);
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				System.out.println(list.get(0));
				System.out.println(list.get(1));
				request.setAttribute("pid", pid);
				request.setAttribute("title", list.get(0));
				request.setAttribute("description", list.get(1));
				request.getRequestDispatcher("adminpages/admin-updatepage.jsp")
				.forward(request, response);
				
			}
			
			
			if(id.equals("updateItem")) {
				int pid=Integer.parseInt(request.getParameter("pid"));
				//System.out.println("PID:"+pid);
				String title=request.getParameter("title");
				//System.out.println("Title:"+title);
				String description=request.getParameter("description");
				//System.out.println("Description:"+description);

				try {
					adminService.updateItem(pid,title,description);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				List<Category> listCat=new ArrayList();
				try {
					listCat = adminService.fetchCategories();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
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
				
				request.setAttribute("listCat", listCat);
				request.setAttribute("listItems",listItems );
				request.setAttribute("msg", "Item has been updated.");
				request.getRequestDispatcher("adminpages/admin-main-page.jsp")
				.forward(request, response);
			}
			
			
			if(id.equals("logout")){
				request.setAttribute("msg", "");
				request.setAttribute("username","");
				request.setAttribute("cmsg","");
				request.getRequestDispatcher("userpages/user-main1.jsp").forward(request, response);
			}
			
			  if(id.equals("filledcontactform")) {
		        	System.out.println("I came");
		        	String name=request.getParameter("name");
		        	String email=request.getParameter("email");
		        	String mobile=request.getParameter("mobile");
		        	String comment=request.getParameter("comment");
		        	System.out.println(comment);
		        	
		        	
		        	try {
						adminService.insertContact(name,email,mobile,comment);
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}  
		        	request.setAttribute("cmsg","Thanks. Response recorded.");
		        	request.getRequestDispatcher("userpages/user-main1.jsp").forward(request, response);
		        }
			  
			  
			  if(id.equals("checkmessages")){
				    
				    List<Contact>list=new ArrayList();
				    try {
						list=adminService.getAllContacts();
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					request.setAttribute("list", list);
					
					request.getRequestDispatcher("adminpages/admin-messages.jsp").forward(request, response);
				}
			  
			  
			  if(id.equals("viewitem")){
				  int pid=Integer.parseInt(request.getParameter("pid"));
				  System.out.println(pid);
				  List<Item> list=new ArrayList();
				  try {
					list=adminService.getItem(pid);
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				  
				/*  
				  for(Item j:list) {
					  request.setAttribute("title", j.getTitle());
					  request.setAttribute("description", j.getDescription());
					  request.setAttribute("likes",j.getLikes());
					  request.setAttribute("info",j.getInfo());

				  }
                 */
				 //request.setAttribute("title", j.getTitle());	
				 //request.setAttribute("list", list);
				 
				 request.setAttribute("list", list);
				 request.getRequestDispatcher("userpages/user-view.jsp").forward(request, response);
			  
			  }
			  
			  if(id.equals("likeP")){
				  int pid=Integer.parseInt(request.getParameter("pid"));
				  List<String>list=new ArrayList();
					try {
						list=adminService.getItemData(pid);
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					int likes=Integer.parseInt(list.get(2));
					System.out.println("likes: "+likes);
					int new_likes=likes+1;
					try {
						adminService.updateLikes(pid,new_likes);
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
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
			  if(id.equals("likeM")){
				  int pid=Integer.parseInt(request.getParameter("pid"));
				  List<String>list=new ArrayList();
					try {
						list=adminService.getItemData(pid);
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					int likes=Integer.parseInt(list.get(2));
					System.out.println("likes: "+likes);
					int new_likes=likes+1;
					try {
						adminService.updateLikes(pid,new_likes);
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
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

		
	}

}
