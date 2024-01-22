package com.pinkelephant.daos.user;

import java.util.List;

import com.pinkelephant.model.user.Award;

public interface homeDAO {
	
	public List<String> getServicesOnCategory(String category);
	
	public List<Award> fetchAwards();

	public void insertImage();
}
