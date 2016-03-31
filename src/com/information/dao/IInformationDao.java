package com.information.dao;

import java.util.List;

import com.information.domain.Information;

public interface IInformationDao {
	
	public void save(Information information);
	
	public void delete(long id);
	
	public void update(Information information);
	
	public Information get(long id);
	
	public List<Information> getAll();
	
	public int queryCount();
	
	public List<Information> queryInformation(int currentPage, int pageSize);
	
	public int queryReq();
	
	public List<Information> queryList(int currentPage, int pageSize);

}
