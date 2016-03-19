package com.information.dao;

import java.util.List;

import com.information.domain.Information;

public interface IInformationDao {
	
	public void save(Information information);
	
	public void delete(long id);
	
	public void update(Information information);
	
	public Information get(long id);
	
	public List<Information> getAll();

}
