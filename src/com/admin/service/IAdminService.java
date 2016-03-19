package com.admin.service;

import com.admin.domain.Admin;

public interface IAdminService {
	
	public boolean update(Admin admin);
	
	public Admin get(long id);

}
