package com.learnzia.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class ContactDAOImpl implements ContactDAO{

	@Override
	public boolean addContact(String name,String email,String desg) {
		Connection con=ConnectionUtil.getConnection();
		int n=0;
		try {
			Statement stmt=con.createStatement();
			String query="insert into Contacts_table values ('"+name+"','"+email+"','"+desg+"')";
			n=stmt.executeUpdate(query);		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(n>0) {
			return true;
		}
		else {
			return false;
		}
	}

}
