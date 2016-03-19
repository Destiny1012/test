package com.admin.dao;

import com.admin.domain.Admin;

public interface IAdminDao {
	
	public void update(Admin admin);
	
	public Admin get(long id);

}
