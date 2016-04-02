package com.user.service;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.user.dao.IUserDao;
import com.user.domain.User;

@Service
public class UserService implements IUserService {
	
	@Resource
	private IUserDao userDao;
	
	public boolean saveUser(User user){
		try{
			userDao.save(user);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean deleteUser(long id){
		try{
			userDao.delete(id);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean updateUser(User user){
		try{
			userDao.update(user);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public User getById(long id){
		try{
			return userDao.getById(id);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public List<User> getUser(String email) {
		try{
			return userDao.getUser(email);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public List<User> findAll() {
		 try{
			 return userDao.findAll();
		 }catch(Exception e){
			 e.printStackTrace();
			 return null;
		 }
	}
	
	public boolean loginUser(String email, String password) {
		try{
			if(userDao.findByEmailAndPassword(email, password).size() > 0) {
				return true;
			}else{
				return false;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public int getCount() {
		try{
			return userDao.queryCount();
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}
	}
	
	public List<User> getList(int currentPage, int pageSize) {
		try{
			return userDao.queryUser(currentPage, pageSize);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public List<User> checkEmail(String email) {
		try{
			return userDao.queryEmail(email);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
