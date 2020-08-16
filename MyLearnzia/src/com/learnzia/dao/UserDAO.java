package com.learnzia.dao;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import com.learnzia.model.User;

public interface UserDAO {
	
	public boolean insertUser(User user);
	public boolean deleteUser(String username,String email);
	public List<User> selectUsers();
	public String validateUser(String username,String password);
	public boolean validatePasscode(String passcode);
	
}
