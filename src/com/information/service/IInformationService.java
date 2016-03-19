package com.information.service;

import java.util.List;

import com.information.domain.Information;

public interface IInformationService {
	
	public boolean save(Information information);
	
	public boolean delete(long id);
	
	public boolean update(Information information);
	
	public Information get(long id);
	
	public List<Information> getAll();

}
