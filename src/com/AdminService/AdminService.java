package com.AdminService;

import java.sql.SQLException;
import java.util.List;

import com.beans.Category;
import com.beans.Contact;
import com.beans.Item;
import com.model.DBConfig;

public class AdminService {
	DBConfig db=new DBConfig();
	public List<Category> fetchCategories() throws ClassNotFoundException, SQLException {
		//System.out.println("i came in service");
		return db.fetchCategories();
		
	}

	public List<Item> fetchItems() throws ClassNotFoundException, SQLException {
		return db.fetchItems();
		
	}

	public void deleteItem(int pid) throws ClassNotFoundException, SQLException {
		db.deleteItem(pid);
		
	}

	public void addItemDetails(String cid, String title, String description,String info) throws NumberFormatException, ClassNotFoundException, SQLException {
		db.addItemDetails(cid,title,description,info);
		
	}

	public List<String> getItemData(int pid) throws ClassNotFoundException, SQLException {
		return db.getItemData(pid);
	}

	public void updateItem(int pid, String title, String description) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		db.updateItem(pid,title,description);
		
	}

	public void insertContact(String name, String email, String mobile, String comment) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		db.insertContact(name,email,mobile,comment);
		
	}

	public List<Contact> getAllContacts() throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return db.getAllContacts();
	}

	public List<Item> getItem(int pid) throws ClassNotFoundException, SQLException {
		return db.getItem(pid);
	}

	public void updateLikes(int pid, int new_likes) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		db.updateLikes(pid,new_likes);
	}

	

	


}
