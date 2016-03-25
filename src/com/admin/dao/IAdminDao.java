package com.admin.dao;

import java.util.List;

import com.admin.domain.Admin;

public interface IAdminDao {
	
	public void save(Admin admin);
	
	public void delete(long id);
	
	public void update(Admin admin);
	
	public Admin get(long id);
	
	public List<Admin> findByNameAndPassword(String name, String password);

}
