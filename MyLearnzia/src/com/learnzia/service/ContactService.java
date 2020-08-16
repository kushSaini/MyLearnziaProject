package com.learnzia.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.learnzia.dao.ConnectionUtil;
import com.learnzia.model.Contact;

public class ContactService {

	public List<Contact> select(String name) {
		List<Contact> result=new ArrayList<Contact>();
		Connection con=ConnectionUtil.getConnection();
		try {
		Statement stmt=con.createStatement();
		String Query="select * from contacts_table where name='"+name+"'";
		ResultSet rs=null;
		rs=stmt.executeQuery(Query);
		while(rs.next()) {
			Contact c=new Contact(rs.getString(1),rs.getString(2),rs.getString(3));
			result.add(c);
		}
		}
		catch(SQLException se) {
			se.printStackTrace();
		}
		return result;
	}
}
