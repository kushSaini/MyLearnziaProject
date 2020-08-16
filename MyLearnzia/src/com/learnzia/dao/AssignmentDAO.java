package com.learnzia.dao;
import java.util.List;

import com.learnzia.model.Assignment;

public interface AssignmentDAO {

	public boolean addAssignment(Assignment a);
	
	public List<Assignment> selectAssignment();
	
}
