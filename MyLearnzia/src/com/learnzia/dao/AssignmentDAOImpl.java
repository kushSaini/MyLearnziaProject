package com.learnzia.dao;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

import com.learnzia.model.*;

public class AssignmentDAOImpl implements AssignmentDAO {

	@Override
	public boolean addAssignment(Assignment a) {
		Connection con = ConnectionUtil.getConnection();
		int n = 0;
		try {

			String query = "insert into assignment values(?,?,?,?,?)";
			PreparedStatement pmt = con.prepareStatement(query);

			pmt.setInt(1, a.getId());
			pmt.setString(2, a.getQuestion());
			pmt.setString(3, a.getModule());
			pmt.setString(4, a.getTopic());
			pmt.setDate(5, a.getEnddate());

			n = pmt.executeUpdate();

		} // try

		catch (Exception e) {
			e.printStackTrace();
		} // catch

		if (n > 0) {
			return true;
		} // if

		else {
			return false;
		} //

	}

	@Override
	public List<Assignment> selectAssignment() {
		Connection con = ConnectionUtil.getConnection();
		int n = 0;
		List<Assignment> li = new LinkedList<>();
		try {
			Statement stmt = con.createStatement();
			String query = "select * from assignment";
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				int id = rs.getInt(1);
				String question = rs.getString(2);
				String module = rs.getString(3);
				String topic = rs.getString(4);
				Date enddate = rs.getDate(5);

				li.add(new Assignment(id, question, module, topic, enddate));

			} // while

		} // try

		catch (Exception e) {
			e.printStackTrace();
		} // catch
		return li;
	}

}
