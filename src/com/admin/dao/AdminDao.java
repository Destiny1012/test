package com.admin.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.admin.domain.Admin;

@Repository
@Transactional
public class AdminDao implements IAdminDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public void update(Admin admin) {
		getSession().update(admin);
	}
	
	public Admin get(long id) {
		return (Admin) getSession().get(Admin.class, id);
	}
	
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	protected SessionFactory getFactory() {
		return sessionFactory;
	}

}
