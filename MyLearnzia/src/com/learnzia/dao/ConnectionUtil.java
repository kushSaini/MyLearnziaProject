package com.learnzia.dao;
import java.sql.*;
public class ConnectionUtil {
	public static Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","mylearnzia","learn1234");
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		catch(ClassNotFoundException ee) {
			ee.printStackTrace();
		}
		return con;
	}
}
