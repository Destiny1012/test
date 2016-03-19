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
	
}
