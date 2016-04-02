package com.user.dao;

import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.user.domain.User;

@Repository
@Transactional
@SuppressWarnings("unchecked")
public class UserDao implements IUserDao {

	@Resource
	private SessionFactory sessionFactory;

	public void save(User user) {
		getSession().save(user);
	}

	public void delete(Long id) {
		Object obj = getSession().get(User.class, id);
		getSession().delete(obj);
	}

	public void update(User user) {
		getSession().merge(user);
	}

	public User getById(Long id) {
		return (User) getSession().get(User.class, id);
	}
	
	public List<User> getUser(String email) {
		List<User> list= getSession().createQuery("from User where email=:email").setString("email", email).list();
		return list;
	}

	public List<User> getByIds(Long[] ids) {
		if (ids == null || ids.length == 0) {
			return Collections.EMPTY_LIST;
		}
		return getSession().createCriteria(User.class).add(
				Restrictions.in("id", ids)).list();
	}

	public List<User> findAll() {
		return getSession().createCriteria(User.class).list();
	}
	
	public List<User> findByEmailAndPassword(String email, String password) {
		return getSession().createQuery("from User where email=:email and password=:password").setString("email", email).setString("password", password).list();
	}
	
	public int queryCount() {
		return Integer.parseInt(getSession().createSQLQuery("select count(*) from users").uniqueResult().toString());
	}
	
	public List<User> queryUser(int currentPage, int pageSize) {
		int startRow = (currentPage - 1) * pageSize;
		return getSession().createQuery("from User").setFirstResult(startRow).setMaxResults(pageSize).list();
	}
	
	public List<User> queryEmail(String email) {
		return getSession().createSQLQuery("select * from users where email").addEntity(User.class).setString("email", email).list();
	}
	 
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	protected SessionFactory getFactory() {
		return sessionFactory;
	}
}
