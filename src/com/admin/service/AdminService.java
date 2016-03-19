package com.admin.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.admin.dao.IAdminDao;
import com.admin.domain.Admin;

@Service
public class AdminService implements IAdminService {
	
	@Resource
	private IAdminDao adminDao;
	
	public boolean update(Admin admin) {
		try{
			adminDao.update(admin);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public Admin get(long id) {
		try{
			return adminDao.get(id);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
