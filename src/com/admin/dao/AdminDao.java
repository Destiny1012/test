package com.admin.dao;

import java.util.List;

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
	
	public void save(Admin admin) {
		getSession().save(admin);
	}
	
	public void delete(long id) {
		getSession().delete(getSession().get(Admin.class, id));
	}
	
	public void update(Admin admin) {
		getSession().update(admin);
	}
	
	public Admin get(long id) {
		return (Admin) getSession().get(Admin.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Admin> findByNameAndPassword(String name, String password) {
		return getSession().createQuery("from Admin where name=:name and password=:password").setString("name", name).setString("password", password).list();
	}
	
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	protected SessionFactory getFactory() {
		return sessionFactory;
	}

}
