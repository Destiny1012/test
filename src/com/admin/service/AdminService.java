package com.admin.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.admin.dao.IAdminDao;
import com.admin.domain.Admin;

@Service
public class AdminService implements IAdminService {
	
	@Resource
	private IAdminDao adminDao;
	
	public boolean save(Admin admin) {
		try{
			adminDao.save(admin);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean delete(long id) {
		try{
			adminDao.delete(id);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
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
	
	public boolean loginAdmin(String name, String password) {
		try{
			if(adminDao.findByNameAndPassword(name, password).size() > 0){
				return true;
			}else{
				return false;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
