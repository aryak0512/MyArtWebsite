package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.beans.Category;
import com.beans.Contact;
import com.beans.Item;

public class DBConfig {
	//Step 1 : declare all variables 
		String url="jdbc:mysql://localhost:3306/mywebsite";
		String username="root";
		String password="";
		String driver="com.mysql.jdbc.Driver";
		
		Connection conn;
		//Step 2
		private void dbConnect() throws ClassNotFoundException, SQLException{
			//Load the driver
			Class.forName(driver);
			//establish the connection
			conn = DriverManager.getConnection(url, username, password);
		}
		public List<Item> fetchItems() throws SQLException, ClassNotFoundException {
			 dbConnect();
			 //System.out.println("i came in dbconfig");
			 String sql="select * from items";
			 //Step 3: creating the statement
			 PreparedStatement pstmt = conn.prepareStatement(sql);
			 //step 4: executing the statement
			 ResultSet rst = pstmt.executeQuery();
			 List<Item> list = new ArrayList();
			 while(rst.next()){
				 int id = rst.getInt("id");
				 String title = rst.getString("title");
				 String description = rst.getString("description");
				 int categoryid = rst.getInt("categoryid");
				 int likes = rst.getInt("likes");
				 String info = rst.getString("info");
				 Item i = new Item();
				 i.setId(id);
				 i.setTitle(title);
				 i.setDescription(description);
				 i.setCategoryid(categoryid);
				 i.setLikes(likes);
				 i.setInfo(info);
				 list.add(i);
				 
			 }
			 rst.close();
			 pstmt.close();
			 
			 return list;
			
		}
		public List<Category> fetchCategories() throws SQLException, ClassNotFoundException {
			dbConnect();
			 String sql="select * from category";
			 //Step 3: creating the statement
			 PreparedStatement pstmt = conn.prepareStatement(sql);
			 //step 4: executing the statement
			 ResultSet rst = pstmt.executeQuery();
			 List<Category> list = new ArrayList<>();
			 while(rst.next()){
				 int id = rst.getInt("id");
				 String name = rst.getString("name");
				 
				 Category c = new Category();
				 c.setId(id);
				 c.setName(name);
				 list.add(c);
				 
			 }
			 rst.close();
			 pstmt.close();
			 return list;
		}
		
		public void deleteItem(int pid) throws ClassNotFoundException, SQLException {
			
			dbConnect();
			//System.out.println("Came in dbconfig for delete");
			String sql="DELETE FROM items WHERE id=?" ;
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);
			pstmt.executeUpdate();
			
		}
		
		public void addItemDetails(String cid, String title, String description,String info) throws NumberFormatException, SQLException, ClassNotFoundException {
			// TODO Auto-generated method stub
			dbConnect();
			String sql="insert into items(title,description,categoryId,likes,info) values(?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, description);
			pstmt.setInt(3, Integer.parseInt(cid));
			pstmt.setInt(4, 0);
			pstmt.setString(5, info);
			pstmt.executeUpdate();
			
		}
		public List<String> getItemData(int pid) throws SQLException, ClassNotFoundException {
			 dbConnect();
			 String sql="select title,description,likes from items where id=?";
			 //Step 3: creating the statement
			 PreparedStatement pstmt = conn.prepareStatement(sql);
			 //step 4: executing the statement
			 pstmt.setInt(1, pid);
			 ResultSet rst = pstmt.executeQuery();
			 List<String> list = new ArrayList<>();
			 while(rst.next()){
				 String title = rst.getString("title");
				 String description = rst.getString("description");
				 String likes = rst.getString("likes");
				 list.add(title);
				 list.add(description);
				 list.add(likes);
				 
			 }
			 rst.close();
			 pstmt.close();
			 
			 return list;
		}
		public void updateItem(int pid, String title, String description) throws ClassNotFoundException, SQLException {
			// TODO Auto-generated method stub
			dbConnect();
			String sql="update items SET title=?,description=? where id=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, description);
			pstmt.setInt(3, pid);
			pstmt.executeUpdate();
		}
		public void insertContact(String name, String email, String mobile, String comment) throws ClassNotFoundException, SQLException {
			// TODO Auto-generated method stub
			dbConnect();
			String sql="insert into contact(name,email,mobile,comment) values(?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, mobile);
			pstmt.setString(4, comment);
			pstmt.executeUpdate();
			
		}
		public List<Contact> getAllContacts() throws SQLException, ClassNotFoundException {
			 dbConnect();
			 String sql="select * from contact";
			 //Step 3: creating the statement
			 PreparedStatement pstmt = conn.prepareStatement(sql);
			 //step 4: executing the statement
			 ResultSet rst = pstmt.executeQuery();
			 List<Contact> list = new ArrayList<>();
			 while(rst.next()){
				 int id = rst.getInt("id");
				 String name = rst.getString("name");
				 String email = rst.getString("email");
				 String mobile = rst.getString("mobile");
				 String comment = rst.getString("comment");
				 Contact c = new Contact();
				 c.setId(id);
				 c.setName(name);
				 c.setEmail(email);
				 c.setMobile(mobile);
				 c.setComment(comment);
				 list.add(c);
				 
			 }
			 rst.close();
			 pstmt.close();
			 return list;
		}
		public List<Item> getItem(int pid) throws SQLException, ClassNotFoundException {
			 dbConnect();
			 String sql="select * from items where id=?";
			 //Step 3: creating the statement
			 PreparedStatement pstmt = conn.prepareStatement(sql);
			 //step 4: executing the statement
			 pstmt.setInt(1, pid);
			 ResultSet rst = pstmt.executeQuery();
			 List<Item> list = new ArrayList();
			 while(rst.next()){
				 int id = rst.getInt("id");
				 String title = rst.getString("title");
				 String description= rst.getString("description");
				 int categoryid = rst.getInt("categoryid");
				 int likes = rst.getInt("likes");
				 String info = rst.getString("info");
				 Item i =new Item();
				 i.setTitle(title);
				 i.setDescription(description);
				 i.setLikes(likes);
				 i.setInfo(info);
				 list.add(i);
				 
			 }
			 rst.close();
			 pstmt.close();
			 return list;
		}
		public void updateLikes(int pid, int new_likes) throws ClassNotFoundException, SQLException {
			// TODO Auto-generated method stub
			dbConnect();
			String sql="update items SET likes=? where id=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, new_likes);
			
			pstmt.setInt(2, pid);
			pstmt.executeUpdate();
		}
		
		


}
