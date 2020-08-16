package com.learnzia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import com.learnzia.model.User;



public class UserDAOImpl implements UserDAO {
	
	@Override
	public String validateUser(String username, String password) {
		Connection con=ConnectionUtil.getConnection();
		PreparedStatement pmt=null;
		ResultSet rs=null;
		String unameCheck = null;
		String passCheck = null;
		String name=null;
		try {
			String query = "select * from users where username=?";
			pmt = con.prepareStatement(query);
			pmt.setString(1, username);
			rs = pmt.executeQuery();
			while (rs.next()) {
				unameCheck = rs.getString(1);
				passCheck = rs.getString(2);
				name=rs.getString(3);
			}
		}
		catch(SQLException se) {se.printStackTrace();}
		if(username.equals("admin") && password.equals("admin$1234")){
			return "admin";
		}
		else if(username.equals(unameCheck) && password.equals(passCheck)) {
			
			return name;
		}
	 
		else {
			return null;
		}
	}

	@Override
	public boolean validatePasscode(String passcode) {
		Connection con=ConnectionUtil.getConnection();
		PreparedStatement pmt=null;
		ResultSet rs=null;
		String codeCheck = null;
		try {
			String query = "select * from users where passcode=?";
			pmt = con.prepareStatement(query);
			pmt.setString(1, passcode);
			rs = pmt.executeQuery();
			while (rs.next()) {
				codeCheck = rs.getString(10);
			}
		}
		catch(SQLException se) {se.printStackTrace();}
		if(passcode.equals(codeCheck)) {
			
			return true;
		}
		else if(passcode.equals(null)) {
			return false;
		}
		else {
		return false;
	}
	}

	@Override
	public boolean insertUser(User user) {
		SimpleDateFormat format=new SimpleDateFormat("dd-MM-yyyy");
		int n=0;
		try {
			Date dateOfBirth=format.parse(user.getDateOfBirth());
			java.sql.Date sqdob=new java.sql.Date(dateOfBirth.getTime());
			Date doj=format.parse(user.getDateOfJoining());
			java.sql.Date sqdoj=new java.sql.Date(doj.getTime());
			Connection con=ConnectionUtil.getConnection();
			PreparedStatement pmt=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?,?)");
			pmt.setString(1, user.getUsername());
			pmt.setString(2, user.getPassword());
			pmt.setString(3, user.getName());
			pmt.setDate(4, sqdob);
			pmt.setString(5, user.getGender());
			pmt.setString(6, user.getEmail());
			pmt.setString(7, user.getMobileNo());
			pmt.setString(8, user.getAddress());
			pmt.setDate(9, sqdoj);
			pmt.setString(10, user.getPasscode());
			pmt.setString(11, user.getDesignation());
			n=pmt.executeUpdate();
		
		}catch (Exception s){
			s.printStackTrace();
		}
		if (n > 0) {
			return true;
		} // if

		else {
			return false;
		} //
	}

	@Override
	public boolean deleteUser(String username, String email) {
		int n=0;
		Connection con=ConnectionUtil.getConnection();
		String query="delete from users where username = ? and email = ?";
		try {
			PreparedStatement pmt=con.prepareStatement(query);
			pmt.setString(1, username);
			pmt.setString(2, email);
			n=pmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (n > 0) {
			return true;
		} // if

		else {
			return false;
		} //
	}

	@Override
	public List<User> selectUsers() {
		List<User> listUser=new LinkedList();
		try{
		Connection con=ConnectionUtil.getConnection();
		Statement stmt = con.createStatement();
		String query = "select * from users";
		ResultSet rs = stmt.executeQuery(query);
		
		while (rs.next()) {

			String username= rs.getString(1);
			String password = rs.getString(2);
			String name = rs.getString(3);
			String dob = rs.getString(4);
			String gender = rs.getString(5);
			String email = rs.getString(6);
			String mobile= rs.getString(7);
			String address= rs.getString(8);
			String doj= rs.getString(9);
			String passcode= rs.getString(10);
			String design= rs.getString(11);
			User user=new User(username,password,name,dob,gender,email,mobile,address,doj,design,passcode);
			listUser.add(user);
			
	}
		}catch(SQLException sql){
		sql.printStackTrace();
	}
		return listUser;
		}}

