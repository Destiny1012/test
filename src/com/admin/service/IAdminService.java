package com.admin.service;

import com.admin.domain.Admin;

public interface IAdminService {
	
	public boolean save(Admin admin);
	
	public boolean delete(long id);
	
	public boolean update(Admin admin);
	
	public Admin get(long id);
	
	public boolean loginAdmin(String name, String password);

}
