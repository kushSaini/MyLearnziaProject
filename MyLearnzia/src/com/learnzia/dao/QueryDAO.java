package com.learnzia.dao;

import java.util.List;

import com.learnzia.model.QueryTable;

public interface QueryDAO {

	public boolean insertQuery(QueryTable query);
	public List<QueryTable> displayAllQuery();

}
