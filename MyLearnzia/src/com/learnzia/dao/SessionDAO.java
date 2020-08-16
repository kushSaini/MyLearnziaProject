package com.learnzia.dao;

import com.learnzia.model.SessionModel;

public interface SessionDAO {

	public boolean addSession(SessionModel model);
	public boolean deleteSession(int id);
}
