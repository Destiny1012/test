package com.user.service;

import java.util.List;

import com.user.domain.User;

public interface IUserService {
	
	public boolean saveUser(User user);
	
	public boolean deleteUser(long id);
	
	public boolean updateUser(User user);
	
	public User getById(long id);
	
	public List<User> getUser(String email);
	
	public List<User> findAll();
	
	public boolean loginUser(String email, String password);
	
	public int getCount();
	
	public List<User> getList(int currentPage, int pageSize);
	
	public List<User> checkEmail(String email);
	
}
